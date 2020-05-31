package com.gottskalksson.carmanager.controllers;

import com.gottskalksson.carmanager.entity.User;
import com.gottskalksson.carmanager.repositories.UserRepository;
import org.mindrot.jbcrypt.BCrypt;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

@Controller
@RequestMapping(value = "/dashboard/user", produces = "text/plain;charset=utf-8")
public class UserController {

    private final UserRepository userRepository;

    public UserController(final UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    @GetMapping("/edit")
    public String editUser(Model model, HttpSession session) {
        User user = (User) session.getAttribute("user");
        model.addAttribute("user", user);
        return "user-edit-form";
    }

    @PostMapping("/edit")
    public String updatedUser(@ModelAttribute @Valid User user, BindingResult result, HttpSession session, Model model) {

        User userFromSession = (User) session.getAttribute("user");
        user.setPassword(userFromSession.getPassword());
        boolean isTheSameUser = (userFromSession.getId() == userRepository.findByEmail(user.getEmail()).getId());
        if ((result.getErrorCount() <= 2 && isTheSameUser)) {
            userRepository.save(user);
            session.setAttribute("user", user);
            return "redirect:/dashboard";
        } else {
            if (isTheSameUser) {
                model.addAttribute("hidden", "hidden");
            }
            return "user-edit-form";
        }

    }

    @GetMapping("/password")
    public String passwordForm(Model model, HttpSession session) {
        User user = (User) session.getAttribute("user");
        model.addAttribute("user", user);
        return "user-pass-form";
    }

    @PostMapping("/password")
    public String checkPassword(HttpServletRequest request, Model model) {

        String oldPassword = request.getParameter("oldPassword");
        String newPassword1 = request.getParameter("newPassword1");
        String newPassword2 = request.getParameter("newPassword2");

        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        if (!BCrypt.checkpw(oldPassword, user.getPassword())) {
            model.addAttribute("errorMessage", "Podano złe hasło, wpisz ponownie");
            return "user-pass-form";
        } else if (!(newPassword1.equals(newPassword2))) {
            model.addAttribute("errorMessage", "Podane nowe hasła nie są takie same");
            return "user-pass-form";
        } else {
            user.setPassword(BCrypt.hashpw(newPassword1, BCrypt.gensalt()));
            userRepository.save(user);
            return "redirect:/dashboard";
        }


    }


}
