package controllers;

import annotation.Logging;
import form.UserRegistrationForm;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import service.UserService;

import javax.validation.Valid;

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

    @RequestMapping(value = "/sign_in")
    public String getLoginPage(@RequestParam(value = "error", required = false) Boolean error, Model model) {
        if (Boolean.TRUE.equals(error)) {
            model.addAttribute("error", error);
        }
        return "sign_in";
    }
    @Logging
    @RequestMapping(value = "/sign_up", method = RequestMethod.GET)
    public String getRegistrationPage(Model model) {
        model.addAttribute("userform", new UserRegistrationForm());
        return "sign_up";
    }
    @Logging
    @RequestMapping(value = "/sign_up", method = RequestMethod.POST)
    public String registerUser(@ModelAttribute("userform") @Valid UserRegistrationForm form, BindingResult bindingResult, ModelMap modelMap) {
        if (bindingResult.hasErrors()){
            modelMap.addAttribute("error", bindingResult.getAllErrors());
            return "sign_up";
        }
        userService.saveNewUser(form);
        return "redirect:/";
    }
}
