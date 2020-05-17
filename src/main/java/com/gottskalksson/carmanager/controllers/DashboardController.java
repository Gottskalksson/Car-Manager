package com.gottskalksson.carmanager.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class DashboardController {

    @GetMapping("/dashboard")
    @ResponseBody
    public String getDashboard() {
        return "dashboard";
    }


}
