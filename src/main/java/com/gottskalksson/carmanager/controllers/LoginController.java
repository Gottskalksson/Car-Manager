package com.gottskalksson.carmanager.controllers;

import com.gottskalksson.carmanager.entity.User;
import com.gottskalksson.carmanager.repositories.UserRepository;
import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.servlet.http.HttpServletRequest;

@Controller
@SessionAttributes("user")
public class LoginController {

    private final UserRepository userRepository;

    @Autowired
    public LoginController(final UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    @GetMapping("/login")
    public String login () {
        return "login-form";
    }

    @PostMapping("/login")
    public String validateLogin(HttpServletRequest request, Model model) {
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        if (checkUserData(email, password)) {
            model.addAttribute("user", email);
            return "redirect:/dashboard";
        } else {
            return "/login";
        }
    }

    private boolean checkUserData(String email, String password) {
        User user = userRepository.findByEmail(email);
        return user != null && BCrypt.checkpw(password, user.getPassword());
    }
}
