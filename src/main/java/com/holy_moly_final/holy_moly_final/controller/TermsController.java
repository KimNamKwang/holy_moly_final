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
@RequestMapping(value = "/terms")
public class TermsController {

    @RequestMapping(value = "/terms", method = RequestMethod.GET)
    public ModelAndView terms(@RequestParam Map<String, Object> params,
            ModelAndView modelAndView) {

        modelAndView.setViewName("terms/terms");
        return modelAndView;
    }

    @RequestMapping(value = "/termsPrivacy", method = RequestMethod.GET)
    public ModelAndView termsPrivacy(@RequestParam Map<String, Object> params,
            ModelAndView modelAndView) {

        modelAndView.setViewName("terms/termsPrivacy");
        return modelAndView;
    }

    @RequestMapping(value = "/termsPS", method = RequestMethod.GET)
    public ModelAndView termsPS(@RequestParam Map<String, Object> params,
            ModelAndView modelAndView) {

        modelAndView.setViewName("terms/termsPS");
        return modelAndView;
    }

}
