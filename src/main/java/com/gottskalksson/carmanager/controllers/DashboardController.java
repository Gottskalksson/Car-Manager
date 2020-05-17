package com.gottskalksson.carmanager.controllers;

import com.gottskalksson.carmanager.entity.Service;
import com.gottskalksson.carmanager.entity.User;
import com.gottskalksson.carmanager.repositories.ServiceRepository;
import com.gottskalksson.carmanager.repositories.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.validation.constraints.Null;
import java.util.List;

@Controller
@SessionAttributes("user")
public class DashboardController {

    private final ServiceRepository serviceRepository;
    private final UserRepository userRepository;

    @Autowired
    public DashboardController(final ServiceRepository serviceRepository, final UserRepository userRepository) {
        this.serviceRepository = serviceRepository;
        this.userRepository = userRepository;
    }

    @GetMapping("/dashboard")
    public String getDashboard(Model model) {
        List<Service> lastFiveServices = serviceRepository.findFirst5ByOrderByIdDesc();
        model.addAttribute("serviceList", lastFiveServices);
        return "dashboard";
    }

    @ModelAttribute("userName")
    public String userName(HttpServletRequest request) {
        try {
            String email = (String) request.getSession().getAttribute("user");
            User user = userRepository.findByEmail(email);
            return user.getName();
        } catch (NullPointerException e) {
            return "";
        }
    }


}
