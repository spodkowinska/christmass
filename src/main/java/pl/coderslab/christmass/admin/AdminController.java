package pl.coderslab.christmass.admin;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.christmass.santa.Santa;
import pl.coderslab.christmass.user.User;
import pl.coderslab.christmass.user.UserService;

import javax.validation.Valid;
import java.awt.print.Book;
import java.util.List;

@Controller
@RequestMapping("/admin")
public class AdminController {

    private AdminService adminService;
    private UserService userService;

    public AdminController(AdminService adminService, UserService userService) {
        this.adminService = adminService;
        this.userService = userService;
    }

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
        if(user.isHasPaid()){
            user.setHasPaid(false);
        }else
            {user.setHasPaid(true);
        }
        return "redirect:../usersList";
    }

    @GetMapping("/deleteUser/{id}")
    public String delete(@PathVariable Long id) {
        userService.delete(id);
        return "redirect:../usersList";
    }


    @ModelAttribute("users")
    public List<User> getUsers() {
        return adminService.findAllUsers();
    }

}
