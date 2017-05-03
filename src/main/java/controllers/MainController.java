package controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import service.ItemService;
import service.UserService;

/**
 * Created by admin on 24.04.2017.
 */
@Controller
public class MainController {
    @Autowired
    UserService userService;
    @Autowired
    ItemService itemService;

    @RequestMapping(value = "/")
    public String mainPage(Model model) {
        model.addAttribute("items", itemService.getAllItems());
        return "welcome";
    }
}
