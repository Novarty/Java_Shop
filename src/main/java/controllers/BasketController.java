package controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by admin on 09.05.2017.
 */
@Controller
public class BasketController {

    @RequestMapping("/basket")
    private String showBasketPage(){
        return "basket";
    }
}
