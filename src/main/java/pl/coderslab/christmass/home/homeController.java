package pl.coderslab.christmass.home;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.annotation.Secured;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.christmass.user.User;
import pl.coderslab.christmass.user.UserService;
import pl.coderslab.christmass.user.UserServiceTemp;

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

    @GetMapping("/registration")
    public String register(Model model) {
//        User user = new User();
//        user.setUsername("admin2");
//        user.setPassword("admin2");
//        user.setFirstName("admin2");
//        user.setLastName("admin2");
//        userService.saveUser(user);
//
//        return "redirect:admin/usersList";
//    }
        User user = new User();
        model.addAttribute("user", user);
        return "register";
    }

    @PostMapping("/registration")
    public String registerForm( @Valid @ModelAttribute User user, BindingResult result) {
        if (result.hasErrors()) {
            return "register";
        }
        userService.saveUser(user);
        return "redirect:/user/home";
    }

//        userService.saveUser(user);
//        return "redirect:login";
//    }


//    @RequestMapping(value = {"/login"}, method = RequestMethod.GET)
//    public String login() {
//        return "login";
//    }

    @GetMapping("/login")
    public String login(Model model) {
        User user = new User();
        model.addAttribute("user", user);
        return "login";
    }
//
//    @PostMapping("/login")
//    public String loginForm(@Valid @ModelAttribute User user, BindingResult result) {
//        if (result.hasErrors()) {
//            return "login";
//        }
//        return "redirect:home";
//    }

    @GetMapping("/thankYou")
    public String thankYou() {
        return "thankYou";
    }


    @GetMapping("/forgotpassword")
    public String forgotPassword() {
        return "forgotPassword";
    }

//    @GetMapping("/whoami")
//    @ResponseBody
//    public String whoami(@AuthenticationPrincipal UserDetails customUser) {
//        log.info("customUser class {} " , customUser.getClass());
//        return "You are logged as " + customUser;
//    }


}
