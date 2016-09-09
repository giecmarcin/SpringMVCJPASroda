package com.my.app.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by mgiec on 9/7/2016.
 */

@Controller
public class HelloController {

//    @RequestMapping("/")
//    public String index(ModelMap modelMap){
//        modelMap.addAttribute("message", "Spring MVC");
//        return "index";
//    }

    @RequestMapping("/")
    public String showView(){
        return "restPerson";
    }
}
