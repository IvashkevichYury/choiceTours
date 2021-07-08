package by.choiceTours.controller;

import by.choiceTours.entity.AnonMessage;
import by.choiceTours.service.AnonMessageService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping
@RequiredArgsConstructor
public class AnonMessageController {

    private final AnonMessageService messageService;

    @GetMapping("/contacts")
    public ModelAndView anonChat(ModelAndView model, @ModelAttribute(name = "name") String name) {
        model.addObject("messages", messageService.getAll());
        model.setViewName("contacts");
        model.addObject("isGet", true);
        return model;
    }

    @PostMapping("/contacts")
    public ModelAndView anonChatPost(ModelAndView model,
                                     @ModelAttribute(name = "name") String name,
                                    @ModelAttribute(name = "text") String text) {
        AnonMessage message = new AnonMessage();
        message.setText(text);
        message.setSender(name.isEmpty() ? "Anonymous" : name);
        messageService.save(message);
        model.addObject("messages", messageService.getAll());
        model.addObject("name", name);
        model.setViewName("contacts");
        return model;
    }
}
