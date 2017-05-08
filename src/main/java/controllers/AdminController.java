package controllers;

import form.ItemCreatingForm;
import form.UserForm;
import model.Item;
import model.ItemsInStock;
import model.Stock;
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
import repository.ItemInStockRepository;
import service.ItemService;
import service.StockService;
import service.UserService;

import javax.validation.Valid;

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
    @Autowired
    private ItemInStockRepository itemInStockRepository;

    @RequestMapping(value = "/all_users", method = RequestMethod.GET)
    private String allUsersPage(ModelMap model) {
        model.addAttribute("userform", new UserForm());
        model.addAttribute("users", userService.getAllUsers());
        return "all_users";
    }

    @Secured(value = "ROLE_ADMIN")
    @RequestMapping(value = "/all_users", method = RequestMethod.POST)
    private String editUsersInfo(@ModelAttribute("userform") UserForm form, @RequestParam(value = "id", required = false) String param) {
        if (param != null) {
            User user = userService.findOneById(Integer.valueOf(param));
            userService.delete(user);
            return "redirect:/all_users";
        }
        System.out.println("не работает");
        User user = userService.findOneById(form.getId());
        user.setId(form.getId());
        user.setIs_confirm(form.isIs_confirm());
        userService.updateUser(user);
        return "redirect:/all_users";
    }

    @RequestMapping(value = "/new", method = RequestMethod.GET)
    private String getNewItemPage(Model model) {
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
        Item item = new Item(form.getItemName(), form.getDescription(), form.getAmount());
        Stock stock = new Stock(form.getCity(), form.getAddress());
        ItemsInStock itemsInStock = new ItemsInStock();
        itemsInStock.setItem(item);
        itemsInStock.setStock(stock);
        itemService.save(item);
        stockService.save(stock);
        stockService.saveItemInStock(itemsInStock);
        return "redirect:/";
    }

    @RequestMapping(value = "/edit", method = RequestMethod.GET)
    private String editItemPage(Model model, @RequestParam("id") String param) {
        Item item = itemService.findOneById(Integer.valueOf(param));
        model.addAttribute("item", item);
        model.addAttribute("itemform", new ItemCreatingForm());
        return "/edit";
    }

    @RequestMapping(value = "/edit", method = RequestMethod.POST)
    private String editItem(@ModelAttribute("itemform") @Valid ItemCreatingForm form, BindingResult bindingResult, ModelMap modelMap, @RequestParam("id") String param) {
        Item item = itemService.findOneById(Integer.valueOf(param));
        modelMap.addAttribute("item", item);
        if (bindingResult.hasErrors()) {
            modelMap.addAttribute("error", bindingResult.getAllErrors());
            return "edit";
        }
        return "redirect:/";
    }

    @RequestMapping(value = "/show")
    private String showItemPage(Model model, @RequestParam("id") String param) {
        Item item = itemService.findOneById(Integer.valueOf(param));
        model.addAttribute("item", item);
        return "show";
    }
}
