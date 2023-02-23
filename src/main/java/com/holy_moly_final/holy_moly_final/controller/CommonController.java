package com.holy_moly_final.holy_moly_final.controller;

import java.io.BufferedWriter;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/common")
public class CommonController {

    @RequestMapping(value = "/IdResult_fa", method = RequestMethod.GET)
    public ModelAndView IdResult_fa(@RequestParam Map<String, Object> params,
            ModelAndView modelAndView) {

        modelAndView.setViewName("common/IdResult_fa");
        return modelAndView;
    }

    @RequestMapping(value = "/IdResult_su", method = RequestMethod.GET)
    public ModelAndView IdResult_su(@RequestParam Map<String, Object> params,
            ModelAndView modelAndView) {

        modelAndView.setViewName("common/IdResult_su");
        return modelAndView;
    }

    @RequestMapping(value = "/IdSearch", method = RequestMethod.GET)
    public ModelAndView IdSearch(@RequestParam Map<String, Object> params,
            ModelAndView modelAndView) {

        modelAndView.setViewName("common/IdSearch");
        return modelAndView;
    }

    @RequestMapping(value = "/join_step1", method = RequestMethod.GET)
    public ModelAndView join_step1(@RequestParam Map<String, Object> params,
            ModelAndView modelAndView) {

        modelAndView.setViewName("common/join_step1");
        return modelAndView;
    }

    @RequestMapping(value = "/join_step2", method = RequestMethod.GET)
    public ModelAndView join_step2(@RequestParam Map<String, Object> params,
            ModelAndView modelAndView) {

        modelAndView.setViewName("common/join_step2");
        return modelAndView;
    }

    @RequestMapping(value = "/join_step3", method = RequestMethod.GET)
    public ModelAndView join_step3(@RequestParam Map<String, Object> params,
            ModelAndView modelAndView) {

        modelAndView.setViewName("common/join_step3");
        return modelAndView;
    }

    @RequestMapping(value = "/join_step4", method = RequestMethod.GET)
    public ModelAndView join_step4(@RequestParam Map<String, Object> params,
            ModelAndView modelAndView) {

        modelAndView.setViewName("common/join_step4");
        return modelAndView;
    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public ModelAndView login(@RequestParam Map<String, Object> params,
            ModelAndView modelAndView) {

        modelAndView.setViewName("common/login");
        return modelAndView;
    }

    @RequestMapping(value = "/PwSearch", method = RequestMethod.GET)
    public ModelAndView PwSearch(@RequestParam Map<String, Object> params,
            ModelAndView modelAndView) {

        modelAndView.setViewName("common/PwSearch");
        return modelAndView;
    }

}
