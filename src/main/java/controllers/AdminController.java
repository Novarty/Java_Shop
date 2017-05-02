package controllers;

import model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import service.UserService;

import java.util.List;

/**
 * Created by admin on 27.04.2017.
 */
@Controller
public class AdminController {

    @Autowired
    private UserService userService;

    @RequestMapping(value = "/all_users", method = RequestMethod.GET)
    private String allUsersPage(ModelMap model){
        List<User> users = userService.getAllUsers();
        model.addAttribute("users", users);
        return "all_users";
    }
    @RequestMapping(value = "/all_users", method = RequestMethod.POST)
    private String editUsersInfo(ModelMap model){

        return "all_users";
    }

}
