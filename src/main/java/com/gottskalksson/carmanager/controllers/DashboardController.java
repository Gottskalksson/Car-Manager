package com.gottskalksson.carmanager.controllers;

import com.gottskalksson.carmanager.entity.Car;
import com.gottskalksson.carmanager.entity.Service;
import com.gottskalksson.carmanager.entity.User;
import com.gottskalksson.carmanager.repositories.CarRepository;
import com.gottskalksson.carmanager.repositories.ServiceRepository;
import com.gottskalksson.carmanager.repositories.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@SessionAttributes("user")
public class DashboardController {

    private final ServiceRepository serviceRepository;
    private final UserRepository userRepository;
    private final CarRepository carRepository;

    @Autowired
    public DashboardController(final ServiceRepository serviceRepository, final UserRepository userRepository, final CarRepository carRepository) {
        this.serviceRepository = serviceRepository;
        this.userRepository = userRepository;
        this.carRepository = carRepository;
    }

    @GetMapping("/dashboard")
    public String getDashboard(Model model) {
        List<Service> lastFiveServices = serviceRepository.findFirst5ByOrderByIdDesc();
        model.addAttribute("serviceList", lastFiveServices);
        List<Car> carsList = carRepository.findAll();
        model.addAttribute("carsList", carsList);
        return "dashboard";
    }

    @ModelAttribute("userName")
    public String userName(HttpServletRequest request) {
        try {
            User user = (User) request.getSession().getAttribute("user");
            return user.getName();
        } catch (NullPointerException e) {
            return "";
        }
    }

}
