package pl.coderslab.christmass.home;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
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
import pl.coderslab.christmass.user.UserServiceImpl;

import javax.validation.Valid;

@Controller
@RequestMapping("/")
@Transactional
public class homeController {

    private UserServiceImpl userService;

    @Autowired
    public homeController(UserServiceImpl userService) {
        this.userService = userService;
    }

    @GetMapping("/home")
    public String home() {
        return "home";
    }

    //TODO passwords need to be the same
    //TODO password needs to be encrypted - done

    @GetMapping("/registration")
    public String register(Model model) {
        User user = new User();
        model.addAttribute("user", user);
        return "register";
    }

    @PostMapping("/registration")
    public String registerForm( @Valid @ModelAttribute User user,
//                                @PathVariable String hashedId,
                                BindingResult result) {
        if (result.hasErrors()) {
            return "register";
        }
        String hashedId = "hash1";
        userService.saveUser(user);
        userService.addEvent(user,hashedId);
        return "redirect:login?registration=1";
    }

    @GetMapping("/login")
    public String login(Model model, @RequestParam (value="registration", required = false) Integer registration) {
        System.out.println(registration);
        if(registration!=null && registration.equals(1)){
            model.addAttribute("registration", 1);
        }
        User user = new User();
        model.addAttribute("user", user);
        return "login";
    }

//    @GetMapping("/login")
//    public String login(Model model) {
//        User user = new User();
//        model.addAttribute("user", user);
//        return "login";
//    }
//    @GetMapping("/login/{param}")
//    public String login(Model model, @Path) {
//        User user = new User();
//        model.addAttribute("user", user);
//        return "login";
//    }

    @GetMapping("/logoutSuccess")
    public String logout() {
        return "thankYou";
    }


    @GetMapping("/thankYou")
    public String thankYou() {
        return "thankYou";
    }

    @GetMapping("/forgotpassword")
    public String forgotPassword() {
        return "forgotPassword";
    }

    @GetMapping("/error")
    public String error(){return "error";}


}
