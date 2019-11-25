package pl.coderslab.christmass.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.christmass.event.Event;
import pl.coderslab.christmass.event.EventService;
import pl.coderslab.christmass.message.Message;
import pl.coderslab.christmass.message.MessageService;
import pl.coderslab.christmass.present.PresentService;
import pl.coderslab.christmass.santa.SantaService;
import pl.coderslab.christmass.user.CurrentUser;
import pl.coderslab.christmass.user.Status;
import pl.coderslab.christmass.user.User;
import pl.coderslab.christmass.user.UserServiceImpl;

import javax.validation.Valid;

import java.util.Arrays;
import java.util.List;

@Controller
@RequestMapping("/admin")
public class AdminController {

//    private AdminService adminService;
    private UserServiceImpl userService;
    private SantaService santaService;
    private PresentService presentService;
    private MessageService messageService;
    private EventService eventService;

    @Autowired
    public AdminController( UserServiceImpl userService,
                           SantaService santaService, PresentService presentService,
                           MessageService messageService, EventService eventService) {

        this.userService = userService;
        this.santaService = santaService;
        this.presentService = presentService;
        this.messageService = messageService;
        this.eventService = eventService;
    }

//@TODO change status list
//@TODO status as enum
//@TODO user controller with all logics
    //@TODO sending email to user that presents are not created

    @GetMapping("/usersList")
    private String usersList( @AuthenticationPrincipal CurrentUser customUser, Model model) {
        User entityUser = customUser.getUser();
        model.addAttribute("user", entityUser);
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
        User user = userService.findById(id);
        if (user != null) {
            if (user.getRoles() != null && !user.getRoles().isEmpty()) {
                userService.deleteRoleByUserId(id);
            } else if (user.getListOfPresents() != null && !user.getListOfPresents().isEmpty()) {
                presentService.deleteByUserId(id);
            }
            userService.delete(id);
        }
        return "redirect:../usersList";

    }

    //@TODO what should be there?
    @GetMapping("/joinInPairs")
    public String join(@RequestParam int event) {
        if (santaService.findAllSantas().size() > 0) {
            return "redirect:../../user/home";
        } else {
//            Long id = Long.parseLong(eventId);
        int id = event;
            santaService.joinInPairs(userService.findByStatus(Status.PAID), (long)id);
            userService.findByStatus(Status.PAID).stream().filter(u->u.getEvent().contains(eventService.findById((long)
                    id)))
                    .forEach(n -> userService.changeStatus(Status.READY, n.getId()));
            return "redirect:usersList";
        }
    }

    @GetMapping("/sendMessage")
    public String sendMessage(Model model) {
        Message message = new Message();
        model.addAttribute("message", message);
        return "sendMessage";
    }

    @PostMapping("/sendMessage")
    public String sendMessageForm(@Valid @ModelAttribute Message message) {
        messageService.create(message);
        return "redirect:usersList";
    }


    @ModelAttribute("users")
    public List<User> getUsers() {
        return userService.findAllUsers();
    }

    @ModelAttribute("Status")
    public List<Status> getStatus() {
        return Arrays.asList(Status.UNPAID, Status.PAID, Status.READY, Status.SANTA);
    }

    @ModelAttribute("events")
    public List<Event> getEvents() {
        return eventService.findAll();
    }

}
