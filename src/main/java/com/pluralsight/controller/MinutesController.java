package com.pluralsight.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MinutesController {
    @RequestMapping(value = "/addMinutes")
    public String addMinutes(Model model){
        model.addAttribute("minutes", "400 minutek przećwiczone");
        return "addMinutes";
    }
}
