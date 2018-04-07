package spring.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import spring.models.Signup;
import spring.services.RegisterService;
import spring.services.UserService;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.security.NoSuchAlgorithmException;
import java.util.logging.Logger;


@Controller
public class MainController {
    private Logger logger= Logger.getLogger(MainController.class.getName());
    @ Autowired
    public RegisterService registerService=new RegisterService();

    @Autowired
    UserService userService;
    @RequestMapping(value="/index", method= RequestMethod.GET)
    public ModelAndView test(HttpServletRequest request, HttpServletResponse response) {

        ModelAndView mav = new ModelAndView("index");

//        mav.addObject("", new Login());

        return mav;

    }
    @RequestMapping(value="/reg", method= RequestMethod.GET)
    public ModelAndView reg(HttpServletRequest request, HttpServletResponse response) {

        ModelAndView mav = new ModelAndView("reg");
        logger.warning("ABCD");
//        mav.addObject("", new Login());

        return mav;

    }
    @RequestMapping(value="/reg", method= RequestMethod.POST)
    public HttpServletResponse regSubmit(HttpServletRequest request, HttpServletResponse response) throws NoSuchAlgorithmException{

        //ModelAndView mav = new ModelAndView("reg");
        logger.warning("abcd"+request.getParameter("regName"));
        Signup signup=new Signup();
        signup.setsEmail(request.getParameter("regEmail"));
        signup.setsName(request.getParameter("regName"));
        signup.setsPassword(request.getParameter("regPass"));

        logger.warning(signup.getsPassword());
        registerService.register(signup);



        return response;

    }

}
