package pl.coderslab.christmass.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.christmass.santa.SantaService;
import pl.coderslab.christmass.user.Status;
import pl.coderslab.christmass.user.User;
import pl.coderslab.christmass.user.UserServiceImpl;

import javax.validation.Valid;

import java.util.Arrays;
import java.util.List;

@Controller
@RequestMapping("/admin")
public class AdminController {

    private AdminService adminService;
    private UserServiceImpl userService;
    private SantaService santaService;

    @Autowired
    public AdminController(AdminService adminService, UserServiceImpl userService, SantaService santaService) {
        this.adminService = adminService;
        this.userService = userService;
        this.santaService = santaService;
    }

//@TODO change status list
//@TODO status as enum
//@TODO user controller with all logics
    //@TODO sending email to user that presents are not created

    @GetMapping("/usersList")
    private String usersList() {

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
        userService.saveUser(user);
        return "redirect:usersList";
    }

    @GetMapping("/hasPaid/{userId}")
    public String hasPaid(@PathVariable Long userId) {
        User user = userService.findById(userId);
        if (user.getHasPaid() == true) {
            user.setHasPaid(false);
        } else {
            user.setHasPaid(true);
        }
        userService.update(user);
        return "redirect:../usersList";
    }

    @GetMapping("/changeStatus/{userId}")
    public String changeStatus(@PathVariable Long userId) {
        User user = userService.findById(userId);
        if (user.getStatus().equals(Status.PAID)) {
            user.setStatus(Status.READY);
        } else if (user.getStatus().equals(Status.READY)) {
            user.setStatus(Status.SANTA);
        } else if (user.getStatus().equals(Status.SANTA)) {
            user.setStatus(Status.UNPAID);
        } else if (user.getStatus().equals(Status.UNPAID)) {
            user.setStatus(Status.PAID);
        }
        userService.update(user);
        return "redirect:../usersList";
    }

    @GetMapping("/deleteUser/{id}")
    public String delete(@PathVariable Long id) {
        userService.delete(id);
        return "redirect:../usersList";
    }

    //@TODO what should be there?
    @GetMapping("/joinInPairs")
    public String joinInPairs() {
        if (santaService.findAllSantas().size() > 0) {
            return "redirect:user/home";
        } else {
            santaService.joinInPairs(userService.findByStatus(Status.PAID));
            userService.findByStatus(Status.PAID).stream().forEach(n -> userService.changeStatus(Status.READY, n.getId()));
            return "redirect:usersList";
        }
    }


    @ModelAttribute("users")
    public List<User> getUsers() {
        return adminService.findAllUsers();
    }

    @ModelAttribute("Status")
    public List<Status> getStatus() {
        return Arrays.asList(Status.UNPAID, Status.PAID, Status.READY, Status.SANTA);
    }


}
