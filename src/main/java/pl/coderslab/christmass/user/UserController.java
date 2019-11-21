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
    public String home(@AuthenticationPrincipal CurrentUser currentUser,
                       Model model) {
        User entityUser = currentUser.getUser();
        model.addAttribute("user", entityUser);
        return "home";
    }

//    @GetMapping("/setSanta/{userid}")
//    public String setSanta(@PathVariable Long userId) {
//        userService.setSantaStatus(userId);
//        return "redirect:../home";
//    }

    @GetMapping("/addPresent")
    public String addPresent(@AuthenticationPrincipal CurrentUser currentUser,
                             Model model) {
        Present present1 = new Present();
        Present present2 = new Present();
        Present present3 = new Present();
        model.addAttribute("present1", present1);
        model.addAttribute("present2", present2);
        model.addAttribute("present3", present3);
        User entityUser = currentUser.getUser();
        model.addAttribute("user", entityUser);
        return "presentAdd";
    }

    @PostMapping("/addPresent")
    public String addPresentForm(@Valid @ModelAttribute Present present1,
//                                 @Valid @ModelAttribute Present present2,
//                                 @Valid @ModelAttribute Present present3,
                                 @AuthenticationPrincipal CurrentUser customUser) {
        User entityUser = customUser.getUser();
        Long userId= entityUser.getId();
        Present previousPresent = presentService.findByUserId(userId);
        if(previousPresent!=null){
            presentService.deleteByUserId(userId);
        }
        present1.setUser(entityUser);
        presentService.create(present1);
//        presentService.create(present2);
//        presentService.create(present3);
        return "redirect:home";
    }

    @GetMapping("/santa")
    public String santa(@AuthenticationPrincipal CurrentUser currentUser, Model model) {
        User entityUser = currentUser.getUser();
        Long id=entityUser.getId();
        entityUser=userService.findById(id);
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

    @ModelAttribute("presentsByGiver")
    public HashMap<Long, String> presentsByGiversId() {
        HashMap<Long,String> presentsByGiversId = new HashMap<>();
        List<Present> presents= presentService.findAll();

        presents.stream().forEach(p->presentsByGiversId.put(giversId(p.getUser().getId()), p.getDescription()));
        return presentsByGiversId;
    }

    @ModelAttribute("Status")
    public List<Status> getStatus() {
        return Arrays.asList(Status.UNPAID, Status.PAID, Status.READY, Status.SANTA);
    }



    public Long giversId(Long gettersId) {
        List<Santa> santas = santaService.findAllSantas();
        Santa santa = santaService.findByGettersId(gettersId);
        if(santa!=null) {
            Long giversId = santa.getGiversId();
            return giversId;
        }
        return 0l;
    }
}
