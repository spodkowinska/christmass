package pl.coderslab.christmass.santa;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
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


    @GetMapping("/becomeSanta")
    @ResponseBody
    public String getSanta() {
        santaService.joinInPairs(userService.findAll());
        return "santa";
    }

    @ModelAttribute("santas")
    public List<Santa> getSantas() {
        return santaService.findAllSantas();
    }

}
