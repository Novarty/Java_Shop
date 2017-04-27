package controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import service.UserService;

/**
 * Created by admin on 24.04.2017.
 */
@Controller
public class MainController {
    @Autowired
    UserService userService;

    @RequestMapping(value = "/")
    public String mainPage(){
        return "welcome";
    }
}
