package pl.coderslab.christmass.present;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import javax.validation.Valid;

@Controller
public class PresentController {

    private PresentService presentService;

    @Autowired
    public PresentController(PresentService presentService) {
        this.presentService = presentService;
    }

    @GetMapping("/addPresent")
    public String addPresent(Model model) {
        Present present1 = new Present();
        Present present2 = new Present();
        Present present3 = new Present();
        model.addAttribute("present1", present1);
        model.addAttribute("present2", present2);
        model.addAttribute("present3", present3);
        return "presentsAdd";
    }

    @PostMapping("/addPresent")
    public String addPresentForm(@Valid @ModelAttribute Present present1,
                                 @Valid @ModelAttribute Present present2,
                                 @Valid @ModelAttribute Present present3, BindingResult result){
        if (result.hasErrors()) {
            return "presentsAdd";
        }
        presentService.create(present1);
        presentService.create(present2);
        presentService.create(present3);
        return "redirect:thankYou";
    }

    @GetMapping("/thankYou")
    public String thankYou(){
        return"thankYou";
    }

//    @ModelAttribute("listOfCategories")
//    public List<Category> listOfCategories(){
//        return presentService.findAllCategories();
//    }

}
