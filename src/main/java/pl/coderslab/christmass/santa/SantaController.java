//package pl.coderslab.christmass.santa;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.*;
//import pl.coderslab.christmass.user.User;
//import pl.coderslab.christmass.user.UserServiceImpl;
//import pl.coderslab.christmass.user.UserServiceImpl;
//
//import java.util.List;
//
//@Controller
////@RequestMapping("/santa")
//public class SantaController {
//
//    @Autowired
//    public SantaController(SantaService santaService, UserServiceImpl userService) {
//        this.santaService = santaService;
//        this.userService = userService;
//    }
//
//    private SantaService santaService;
//    private UserServiceImpl userService;
//
//
//    @GetMapping("/santa/{userId}")
//    public String getSanta(@PathVariable Long userId, Model model) {
//        User user = userService.findById(userId);
//        if (user != null) {
//            model.addAttribute("user", user);
//            return "santa";
//        } else {
//            return "home";
//        }
//    }
//
//
//
//    @ModelAttribute("santas")
//    public List<Santa> getSantas() {
//        return santaService.findAllSantas();
//    }
//
//}
