package pl.coderslab.christmass.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.christmass.present.Present;
import pl.coderslab.christmass.present.PresentService;
import pl.coderslab.christmass.santa.Santa;
import pl.coderslab.christmass.santa.SantaService;

import javax.validation.Valid;
import java.security.Principal;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/user")
public class UserController {
    private UserServiceImpl userService;
    private PresentService presentService;
    private SantaService santaService;

    @Autowired
    public UserController(UserServiceImpl userService, PresentService presentService, SantaService santaService) {
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

    @GetMapping("/add")
    public String addPresent() {
//        Present present1 = new Present();
//        Present present2 = new Present();
//        Present present3 = new Present();
//        model.addAttribute("present1", present1);
//        model.addAttribute("present2", present2);
//        model.addAttribute("present3", present3);
        return "presentAdd";
    }

    @PostMapping("/add")
    public String addPresentForm(
//            @RequestParam(required = false) String present1,
//                                 @RequestParam(required = false) String present2,
//                                 @RequestParam(required = false) String present3,
//                                 @AuthenticationPrincipal CurrentUser currentUser
    ) {
//        User entityUser = currentUser.getUser();
//        Present pres1 = new Present();
//        pres1.setUser(entityUser);
//        pres1.setDescription(present1);
//        presentService.create(pres1);
//
//        Present pres2 = new Present();
//        pres2.setUser(entityUser);
//        pres2.setDescription(present2);
//        presentService.create(pres2);
//
//        Present pres3 = new Present();
//        pres3.setUser(entityUser);
//        pres3.setDescription(present3);
//        presentService.create(pres3);

        return "redirect:/home";
    }

    @GetMapping("/santa")
    public String santa(@AuthenticationPrincipal CurrentUser currentUser, Model model) {
        User entityUser = currentUser.getUser();
        if (entityUser != null) {
            model.addAttribute("user", entityUser);
            model.addAttribute("userId", entityUser.getId());
//            model.addAttribute("getterId", santaService.)
            return "santa";
        } else {
            return "home";
        }
    }

    @GetMapping("/becomeSanta")
    public String becomeSanta(@AuthenticationPrincipal CurrentUser currentUser) {
        User entityUser = currentUser.getUser();
        entityUser.setStatus(Status.SANTA);
        userService.update(entityUser);
        return "redirect:santa";
    }

    //TODO cannot create as long as pairs don't exist
    @ModelAttribute("santaPair")
    public Map<Long, String> santaPair() {
        Map<Long, String> pair = userService.userIdUsersSanta();
        return pair;
    }

//    @ModelAttribute("presents")
//    public HashMap<Long, String> presentsByGiversId() {
//        HashMap<Long,List<String>> presentsByGiversId = new HashMap<>();
//        List<Present> presents= presentService.findAll();
//        presents.stream().forEach(p->p.getId(); );
//        return presentsByGiversId;
//    }

    @ModelAttribute("Status")
    public List<Status> getStatus() {
        return Arrays.asList(Status.UNPAID, Status.PAID, Status.READY, Status.SANTA);
    }

//    @ModelAttribute("santas")
    public Map<Long,Long> giversIdGettersId() {
        List<Santa> santas= santaService.findAllSantas();
        Map<Long,Long> giversIdGettersId= new HashMap<>();
        santas.stream().forEach(s-> giversIdGettersId.put(s.getGiversId(), s.getGettersId()));
        return giversIdGettersId;
    }
}