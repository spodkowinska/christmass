package pl.coderslab.christmass.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.christmass.santa.Santa;
import pl.coderslab.christmass.santa.SantaService;
import pl.coderslab.christmass.user.User;
import pl.coderslab.christmass.user.UserService;

import javax.validation.Valid;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@Controller
@RequestMapping("/admin")
public class AdminController {

    private AdminService adminService;
    private UserService userService;
    private SantaService santaService;

    @Autowired
    public AdminController(AdminService adminService, UserService userService, SantaService santaService) {
        this.adminService = adminService;
        this.userService = userService;
        this.santaService = santaService;
    }

//@TODO change status list
//@TODO status as enum
//@TODO user controller with all logics
    //@TODO sending email to user that presents are not created

    @GetMapping("/usersList")
    private String usersList(){
     return "admin";
    }

    @GetMapping("/addUser")
    public String add(Model model) {
        model.addAttribute("user", new User());
        return "addUser";
    }

    @PostMapping("/addUser")
    public String addUserForm(@Valid @ModelAttribute User user, BindingResult result) {
        if (result.hasErrors()) {
            return "addUser";
        }
        userService.create(user);
        return "redirect:usersList";
    }

    @GetMapping("/hasPaid/{userId}")
    public String hasPaid(@PathVariable Long userId){
        User user = userService.findById(userId);
        if(user.getHasPaid()==true){
            user.setHasPaid(false);
        }else
            {user.setHasPaid(true);
        }
        userService.update(user);
        return "redirect:../usersList";
    }

    @GetMapping("/deleteUser/{id}")
    public String delete(@PathVariable Long id) {
        userService.delete(id);
        return "redirect:../usersList";
    }

    @GetMapping("/joinInPairs")
    public String joinInPairs(){
        santaService.joinInPairs(userService.findByStatus("paid"));
        userService.findByStatus("paid").stream().forEach(n->userService.changeStatus("ready", n.getId()));
        return "redirect:usersList";
    }


    @ModelAttribute("users")
    public List<User> getUsers() {
        return adminService.findAllUsers();
    }
    @ModelAttribute("status")
    public List<String>getStatus(){ return Arrays.asList("ready", "paid", "notpaid", "santa");}

}
