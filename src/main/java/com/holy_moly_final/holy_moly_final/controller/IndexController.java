package com.holy_moly_final.holy_moly_final.controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class IndexController {
    @RequestMapping(value = { "/", "", "/index" }, method = RequestMethod.GET)
    public ModelAndView guideHome(@RequestParam Map<String, Object> params,
            ModelAndView modelAndView) {

        modelAndView.setViewName("index");
        return modelAndView;
    }
}
