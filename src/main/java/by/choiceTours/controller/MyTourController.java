package by.choiceTours.controller;

import by.choiceTours.entity.MyTour;
import by.choiceTours.service.MyTourService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/user/tour")
@RequiredArgsConstructor
public class MyTourController {

    private final MyTourService tourService;

    @GetMapping("/{id}")
    public ModelAndView getTour(ModelAndView model, @PathVariable int id) {

        MyTour tour = new MyTour();

        model.addObject("tour", tourService.createTour(tour));
        model.setViewName("create_tour");
        return model;
    }

    @GetMapping("/all")
    public ModelAndView getAllTours(ModelAndView model) {
        model.setViewName("tour");
        return model;
    }
}
