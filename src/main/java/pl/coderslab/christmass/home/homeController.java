package pl.coderslab.christmass.home;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.christmass.user.User;
import pl.coderslab.christmass.user.UserService;

import javax.validation.Valid;

@Controller
@RequestMapping("/")
@Transactional
public class homeController {

    private UserService userService;

    @Autowired
    public homeController(UserService userService) {
        this.userService = userService;
    }

    @GetMapping("/home")
    public String home() {
        return "home";
    }

    //TODO passwords need to be the same
    //TODO password needs to be encrypted

    @GetMapping("/register")
    public String register(@Valid Model model) {
        User user = new User();
        model.addAttribute("user", user);
        return "register";
    }

    @PostMapping("/register")
    public String registerForm(@Valid @ModelAttribute User user, BindingResult result) {
        if (result.hasErrors()) {
            return "register";
        }
        userService.create(user);
        return "redirect:login";
    }

    @GetMapping("/login")
    public String login(Model model) {
        User user = new User();
        model.addAttribute("user", user);
        return "login";
    }

    @PostMapping("/login")
    public String loginForm(@Valid @ModelAttribute User user, BindingResult result) {
        if (result.hasErrors()) {
            return "login";
        }

        return "redirect:home";
    }


    @GetMapping("/forgotpassword")
    public String forgotPassword() {
        return "forgotpassword";
    }


}
