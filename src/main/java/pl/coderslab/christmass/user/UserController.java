package pl.coderslab.christmass.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.christmass.present.Present;
import pl.coderslab.christmass.present.PresentService;
import pl.coderslab.christmass.santa.SantaService;

import javax.validation.Valid;
import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController {
    private UserService userService;
    private PresentService presentService;
    private SantaService santaService;

    @Autowired
    public UserController(UserService userService, PresentService presentService, SantaService santaService) {
        this.userService = userService;
        this.presentService = presentService;
        this.santaService = santaService;
    }

    @GetMapping("/home")
    public String home() {
        return "home";
    }

//    @GetMapping("/setSanta/{userid}")
//    public String setSanta(@PathVariable Long userId) {
//        userService.setSantaStatus(userId);
//        return "redirect:../home";
//    }

    @GetMapping("/addPresent")
    public String addPresent(Model model) {
        Present present1 = new Present();
        Present present2 = new Present();
        Present present3 = new Present();
        model.addAttribute("present1", present1);
        model.addAttribute("present2", present2);
        model.addAttribute("present3", present3);
        return "presentAdd";
    }

    @PostMapping("/addPresent")
    public String addPresentForm(@Valid @ModelAttribute Present present1,
                                 @Valid @ModelAttribute Present present2,
                                 @Valid @ModelAttribute Present present3, BindingResult result) {
        if (result.hasErrors()) {
            return "presentAdd";
        }
        presentService.create(present1);
        presentService.create(present2);
        presentService.create(present3);
        return "redirect:/home";
    }

//    @GetMapping("/santa/{userId}")
//    public String getSanta(@PathVariable Long userId, Model model) {
//        User user = userService.findById(userId);
//        if (user != null) {
//            model.addAttribute("user", user);
//            return "santa";
//        } else {
//            return "home";
////        }
//    }
//
//    @GetMapping("/becomeSanta/{userId}")
//    public String becomeSanta(@PathVariable Long userId, Model model) {
//        User user = userService.findById(userId);
//        user.setStatus("santa");
//        userService.update(user);
//        return "redirect:../santa/" + userId;
//    }
//TODO cannot create as long as pairs don't exist
//    @ModelAttribute("santaPair")
//    public Map<Long, String> santaPair() {
//        return userService.userIdUsersSanta();
//    }

    @ModelAttribute("presents")
    public List<Present> presents(){
        return presentService.findAll();
    }


//    @GetMapping("/hasPaid/{userId}")
//    public String hasPaid(@PathVariable)

    @GetMapping("/create-user")
    @ResponseBody
    public String createUser() {
        User user = new User();
        user.setFirstName("ania");
        user.setLastName("pola");
        user.setUsername("admin");
        user.setPassword("admin");
        userService.saveUser(user);
        return "admin";
    }   }