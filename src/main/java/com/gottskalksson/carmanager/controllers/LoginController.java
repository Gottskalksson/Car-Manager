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

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
@SessionAttributes("user")
public class LoginController {

    private final UserRepository userRepository;

    @Autowired
    public LoginController(final UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    @GetMapping("/login")
    public String login (HttpServletRequest request) {
        if (request.getSession().getAttribute("user") != null) {
            return "redirect:dashboard";
        } else {
            return "login-form";
        }
    }

    @PostMapping("/login")
    public String validateLogin(HttpServletRequest request, HttpServletResponse response, Model model) {
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        if (checkUserData(email, password)) {
            Cookie cookie = new Cookie("user", email);
            cookie.setPath("/");
            response.addCookie(cookie);

            model.addAttribute("user", userRepository.findByEmail(email));
            return "redirect:/dashboard";
        } else {
            model.addAttribute("errorMessage", "Niepoprawny email i/lub hasło");
            return "login-form";
        }
    }

    private boolean checkUserData(String email, String password) {
        User user = userRepository.findByEmail(email);
        return user != null && BCrypt.checkpw(password, user.getPassword());
    }
}
