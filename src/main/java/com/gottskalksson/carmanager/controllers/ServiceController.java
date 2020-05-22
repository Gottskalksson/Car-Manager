package com.gottskalksson.carmanager.controllers;

import com.gottskalksson.carmanager.entity.Service;
import com.gottskalksson.carmanager.entity.User;
import com.gottskalksson.carmanager.repositories.CarRepository;
import com.gottskalksson.carmanager.repositories.ServiceRepository;
import com.gottskalksson.carmanager.repositories.UserRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.util.List;
import java.util.Optional;

@Controller
@RequestMapping(value = "/dashboard/services", produces = "text/plain;charset=utf-8")
public class ServiceController {

    private final ServiceRepository serviceRepository;
    private final UserRepository userRepository;
    private final CarRepository carRepository;

    public ServiceController(final ServiceRepository serviceRepository, final UserRepository userRepository, final CarRepository carRepository) {
        this.serviceRepository = serviceRepository;
        this.userRepository = userRepository;
        this.carRepository = carRepository;
    }

    @GetMapping("/list")
    public String servicesList(Model model, HttpServletRequest request) {
        long userId = User.getUserIdFromSession(request);
        List<Service> allUsersServices = serviceRepository.findAllByUserId(userId);
        model.addAttribute("serviceList", allUsersServices);
        return "services-list";
    }

    @GetMapping("/add")
    public String addService(Model model) {
        model.addAttribute("service", new Service());
        return "service-form";
    }

    @PostMapping("/add")
    public String validateServiceForm(@ModelAttribute @Valid Service service, BindingResult result, HttpServletRequest request) {
        if (!result.hasErrors()) {
            long userId = User.getUserIdFromSession(request);
            Optional<User> findById = userRepository.findById(userId);
            service.setUser(findById.orElse(null));
            serviceRepository.save(service);
            return "redirect:/dashboard/services/list";
        } else {
            return "service-form";
        }
    }

    @RequestMapping("/edit/{id}")
    public String editService (@PathVariable long id, Model model, HttpServletRequest request) {
        long userId = User.getUserIdFromSession(request);
        Optional<Service> serviceById = serviceRepository.findById(userId);
        Service service = serviceById.orElse(new Service());
        if (service.getUser().getId() == userId) {
            model.addAttribute("sevice", service);
            return "service-form";
        } else {
            return "redirect:/dashboard/services/list";
        }
    }

    @RequestMapping("/delete/[id}")
    public String deleteService(@PathVariable long id, HttpServletRequest request) {
        long userId = User.getUserIdFromSession(request);
        Optional<Service> serviceById = serviceRepository.findById(userId);
        Service service = serviceById.orElse(null);
        if (userId == service.getUser().getId()) {
            serviceById.ifPresent(serviceRepository::delete);
        }
        return "redirect:/dashboard/services/list";
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
