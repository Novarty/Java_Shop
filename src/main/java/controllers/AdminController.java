package controllers;

import form.ItemCreatingForm;
import model.Item;
import model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.annotation.Secured;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import service.ItemService;
import service.StockService;
import service.UserService;

import javax.validation.Valid;
import java.util.List;

/**
 * Created by admin on 27.04.2017.
 */
@Controller
public class AdminController {

    @Autowired
    private UserService userService;
    @Autowired
    private ItemService itemService;
    @Autowired
    private StockService stockService;

    @RequestMapping(value = "/all_users", method = RequestMethod.GET)
    private String allUsersPage(ModelMap model){
        List<User> users = userService.getAllUsers();
        model.addAttribute("users", users);
        return "all_users";
    }
    @Secured(value = "ROLE_ADMIN")
    @RequestMapping(value = "/all_users", method = RequestMethod.POST)
    private String editUsersInfo(ModelMap model){

        return "all_users";
    }

    @RequestMapping(value = "/new", method = RequestMethod.GET)
    private String getNewItemPage(Model model){
        model.addAttribute("itemform", new ItemCreatingForm());
        return "new";
    }
    @Secured(value = "ROLE_ADMIN")
    @RequestMapping(value = "/new", method = RequestMethod.POST)
    private String createNewItem(@ModelAttribute("itemform") @Valid ItemCreatingForm form, BindingResult bindingResult, ModelMap modelMap) {
        if (bindingResult.hasErrors()) {
            modelMap.addAttribute("error", bindingResult.getAllErrors());
            return "new";
        }
        itemService.saveNewItem(form);
        stockService.saveStock(form);
        return "redirect:/";
    }

//    @RequestMapping(value = "/edit", method = RequestMethod.GET)
//    private String editItem(@ModelAttribute("itemform") @Valid ItemCreatingForm form, BindingResult bindingResult, ModelMap modelMap) {
//        if (bindingResult.hasErrors()) {
//            modelMap.addAttribute("error", bindingResult.getAllErrors());
//            return "edit";
//        }
//        itemService.editItem(form);
//        return "edit";
//    }
    @RequestMapping(value = "/show")
    private String showItemPage(Model model, @RequestParam("id") String param){
        Item item = itemService.findOneById(Integer.valueOf(param));
        model.addAttribute("item",item);
        return "show";
    }
}
