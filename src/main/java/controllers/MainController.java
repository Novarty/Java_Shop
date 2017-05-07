package controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
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
    public String mainPage(Model model, @RequestParam(value = "params", required = false) String param) {
        if (param != null){
            model.addAttribute("params", itemService.findOneByItemName(param));
            return "welcome";
        }
        model.addAttribute("items", itemService.getAllItems());
        return "welcome";
    }
    @RequestMapping(value = "/forbidden")
    public String forbiddenPage(){
        return "forbidden";
    }
}
