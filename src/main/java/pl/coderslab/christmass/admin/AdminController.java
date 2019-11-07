package pl.coderslab.christmass.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.christmass.santa.Santa;
import pl.coderslab.christmass.user.User;
import pl.coderslab.christmass.user.UserService;

import java.util.List;

@Controller
@RequestMapping("/admin")
public class AdminController {

    private AdminService adminService;
    private UserService userService;

    public AdminController(AdminService adminService) {
        this.adminService = adminService;
        this.userService = userService;
    }

    @GetMapping("/usersList")
    private String listOfUsers(){
     return "admin";
    }

    @GetMapping("/hasPaid/{userId}")
    public String hasPaid(@PathVariable Long userId){
        User user = userService.findById(userId);
        if(user.isHasPaid()){
            user.setHasPaid(false);
        }else
            {user.setHasPaid(true);
        }
        return "redirect:listOfUsers";
    }


    @ModelAttribute("users")
    public List<User> getUsers() {
        return adminService.findAllUsers();
    }

}
