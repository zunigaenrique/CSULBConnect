package spring.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import spring.services.UserService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@Controller
public class MainController {
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

//        mav.addObject("", new Login());

        return mav;

    }

}
