package by.choiceTours.controller;

import by.choiceTours.service.MyUserService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping()
@RequiredArgsConstructor
public class HomeController {

    private final MyUserService userService;

    @GetMapping("/home")
    public ModelAndView homePage(ModelAndView model, @RequestParam(defaultValue = "User") String name) {
        model.addObject("name", name);
        model.setViewName("home");
        return model;
    }

    @GetMapping("/checkUser")
    public ModelAndView checkUser(ModelAndView model) {
        model.addObject("users", userService.getAll());
        model.setViewName("userList");
        return model;
    }
}
