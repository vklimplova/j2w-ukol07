package cz.czechitas.java2webapps.ukol7.controller;

import cz.czechitas.java2webapps.ukol7.service.PostService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.servlet.ModelAndView;

import java.time.LocalDate;

@Controller
public class PostController {
    private final PostService service;

    public PostController(PostService service) {
        this.service = service;
    }


    @GetMapping("")
    public ModelAndView seznamPostu() {
        ModelAndView modelAndView = new ModelAndView("/index");
        modelAndView.addObject("posty", service.list());
        return modelAndView;
    }

    @GetMapping("/post/{slug}")
    public ModelAndView post(@PathVariable String slug) {
        ModelAndView modelAndView = new ModelAndView("/post");
        modelAndView.addObject("post", service.singlePost(slug));
        return modelAndView;
    }
}
