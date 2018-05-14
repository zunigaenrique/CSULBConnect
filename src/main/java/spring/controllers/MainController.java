package spring.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.stereotype.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.util.logging.Logger;
import java.io.IOException;

import spring.services.UserService;
import spring.services.EventService;
import spring.models.Login;
import spring.models.User;
import spring.models.Signup;
import spring.models.Event;

@Controller
public class MainController {

    private Logger logger = Logger.getLogger(MainController.class.getName());
    @Autowired
    public UserService userService;
    @Autowired
    public EventService eventService;
    public User user;

    @RequestMapping(value = "/*", method = RequestMethod.GET)
    public ModelAndView mainPage() {
        String name;
        ModelAndView mav = new ModelAndView("login");
        name = "My Account";
        if (user != null) {
            mav = new ModelAndView("index");
            name = user.getUfirstname();
        }
        mav.addObject(name);
        return mav;
    }

    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public ModelAndView reg(HttpServletRequest request, HttpServletResponse response) {
        ModelAndView mav = new ModelAndView("register");
        return mav;
    }

    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public ModelAndView regSubmit(HttpServletRequest request, HttpServletResponse response) throws IOException {
        Signup signup = new Signup();
        signup.setsEmail(request.getParameter("regEmail").toLowerCase());
        signup.setsFirstName(request.getParameter("regName"));
        signup.setsLastName(request.getParameter("regLName"));
        signup.setsPassword(request.getParameter("regPass"));
        ModelAndView mav = new ModelAndView("registerconf");
        try {
            userService.register(signup);
        } catch (Exception e) {
            response.sendError(500);
        }
        return mav;
    }

    @RequestMapping(value = "/conf", method = RequestMethod.GET)
    public ModelAndView confirm(HttpServletRequest request, HttpServletResponse response) throws IOException {
        ModelAndView mav = new ModelAndView("registerconf");
        return mav;
    }

    @RequestMapping(value = "/regConfirm", method = RequestMethod.POST)
    public ModelAndView response(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String confirmationNumberStr = (request.getParameter("cCode"));
        String confirmationEmail = request.getParameter("cEmail");
        logger.warning(confirmationNumberStr + confirmationEmail);
        int confirmationNumber = Integer.parseInt(confirmationNumberStr);

        try {
            userService.confirm(confirmationEmail, confirmationNumber);
        } catch (Exception e) {
            logger.warning("something went horribly, horribly wrong");
            e.printStackTrace();
            ModelAndView mav = new ModelAndView("blank");
            mav.addObject("message", "<h3 class=\"col text-center\">Please refresh and try again.</h3>");
            return mav;
        }
        ModelAndView mav = new ModelAndView("blank");
        mav.addObject("message", "<h3 class=\"col text-center\">Success! You may now sign in.</h3>");
        return mav;
    }

    //Login
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public ModelAndView showLogin(HttpServletRequest request, HttpServletResponse response) {
        ModelAndView mav = new ModelAndView("login");
        if (user != null) {
            user = null;
        }
        mav.addObject("login", new Login());
        return mav;
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public ModelAndView loginProcess(HttpServletRequest request, HttpServletResponse response, @ModelAttribute("login") Login login) throws Exception {
        login.setEmail(login.getEmail().toLowerCase());
        user = userService.validateUser(login);
        ModelAndView mav = null;
        if (null != user) {
            mav = new ModelAndView("index");
            mav.addObject(user);
            mav.addObject("name", user.getUfirstname());
            System.out.println(login.toString());
        } else {
            mav = new ModelAndView("login");
            mav.addObject("message", "<h3 class=\"col text-center\">Email or password is incorrect.</h3>");
        }
        return mav;
    }

    //Events
    @RequestMapping(value = "/newevent", method = RequestMethod.GET)
    public ModelAndView showNewEvent(HttpServletRequest request, HttpServletResponse response) {
        ModelAndView mav = null;
        if (user == null) {
            mav = new ModelAndView("login");
        } else {
            mav = new ModelAndView("newevent");
            mav.addObject("event", new Event());
        }
        return mav;
    }

    @RequestMapping(value = "/newevent", method = RequestMethod.POST)
    public ModelAndView eventProcess(HttpServletRequest request, HttpServletResponse response, @ModelAttribute("event") Event event) throws Exception {
        event.setEname(request.getParameter("event-name"));
        event.setElocation(request.getParameter("event-location"));
        event.setEdate(request.getParameter("event-date"));
        event.setEdescription(request.getParameter("event-description"));
        event.setUid(user.getUid());
        eventService.createEvent(event);
        ModelAndView mav = new ModelAndView("index");

        return mav;
    }
}
