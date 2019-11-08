package pl.coderslab.christmass.santa;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.christmass.user.User;
import pl.coderslab.christmass.user.UserRepository;
import pl.coderslab.christmass.user.UserService;

import java.util.List;

@Controller
//@RequestMapping("/santa")
public class SantaController {

    @Autowired
    public SantaController(SantaService santaService, UserService userService) {
        this.santaService = santaService;
        this.userService = userService;
    }

    private SantaService santaService;
    private UserService userService;


    @GetMapping("/becomeSanta/{userId}")
    public String getSanta(@PathVariable Long userId, Model model) {
        User user = userService.findById(userId);
model.addAttribute(user);
//        santaService.joinInPairs(userService.findAll());
        return "santa";
    }

    @ModelAttribute("santas")
    public List<Santa> getSantas() {
        return santaService.findAllSantas();
    }

}
