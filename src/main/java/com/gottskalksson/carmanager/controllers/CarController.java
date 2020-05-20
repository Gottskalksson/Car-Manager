package com.gottskalksson.carmanager.controllers;

import com.gottskalksson.carmanager.entity.Car;
import com.gottskalksson.carmanager.entity.User;
import com.gottskalksson.carmanager.repositories.CarRepository;
import com.gottskalksson.carmanager.repositories.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Optional;

@Controller
@RequestMapping(value = "/dashboard/cars", produces = "text/plain;charset=utf-8")
public class CarController {

    private final CarRepository carRepository;
    private final UserRepository userRepository;

    @Autowired
    public CarController(final CarRepository carRepository, final UserRepository userRepository) {
        this.carRepository = carRepository;
        this.userRepository = userRepository;
    }

    @GetMapping("/add")
    public String addNewCar(Model model) {
        model.addAttribute("car", new Car());
        return "car-form";
    }

    @PostMapping("/add")
    public String validateNewCar (@ModelAttribute @Valid Car car, BindingResult result, HttpServletRequest request) {
        if (!result.hasErrors()) {
            long userId = User.getUserIdFromSession(request);
            Optional<User> byId = userRepository.findById(userId);
            car.setUser(byId.orElse(null));
            carRepository.save(car);
            return "redirect:/dashboard/cars/list";
        } else {
            return "car-form";
        }
    }

    @RequestMapping("/edit/{id}")
    public String editCar(@PathVariable long id, Model model) {
        Optional<Car> carById = carRepository.findById(id);
        model.addAttribute("car", carById.orElse(null));
        return "car-edit-form";
    }

    @PostMapping("/edit")
    public String validateEditedCar(@ModelAttribute @Valid Car car, BindingResult result, Model model) {
        long id = car.getId();
        Car firstCar = carRepository.getOne(id);
        boolean b = id == carRepository.findCarByPlateNumber(car.getPlateNumber()).getId();
        car.setUser(firstCar.getUser());
        if (result.getErrorCount() == 1 && b) {
            carRepository.save(car);
            return "redirect:/dashboard/cars/list";
        } else {
            if (b) {
                model.addAttribute("hidden", "hidden");
            }
            return "car-edit-form";
        }
    }

    @GetMapping("/list")
    public String showAllCars(Model model, HttpServletRequest request) {
        long userId = User.getUserIdFromSession(request);
        List<Car> carList = carRepository.findAllByUserId(userId);
        model.addAttribute("carList", carList);
        return "car-list";
    }

    @RequestMapping("/delete/{id}")
    public String deleteCar(@PathVariable long id) {
        Optional<Car> carToDelete = carRepository.findById(id);
        carToDelete.ifPresent(carRepository::delete);
        return "redirect:/dashboard/cars/list";
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

    @InitBinder
    public void initBinder(WebDataBinder binder) {
        SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy");
        sdf.setLenient(true);
        binder.registerCustomEditor(Date.class, new CustomDateEditor(sdf, true));
    }



}
