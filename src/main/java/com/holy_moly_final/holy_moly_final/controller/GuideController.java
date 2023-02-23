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
@RequestMapping(value = "/guide")
public class GuideController {

    @RequestMapping(value = "/guideHome", method = RequestMethod.GET)
    public ModelAndView guideHome(@RequestParam Map<String, Object> params,
            ModelAndView modelAndView) {

        modelAndView.setViewName("guide/guideHome");
        return modelAndView;
    }

    @RequestMapping(value = "/guideImpossible", method = RequestMethod.GET)
    public ModelAndView guideImpossible(@RequestParam Map<String, Object> params,
            ModelAndView modelAndView) {

        modelAndView.setViewName("guide/guideImpossible");
        return modelAndView;
    }

    @RequestMapping(value = "/guidePackaging", method = RequestMethod.GET)
    public ModelAndView guidePackaging(@RequestParam Map<String, Object> params,
            ModelAndView modelAndView) {

        modelAndView.setViewName("guide/guidePackaging");
        return modelAndView;
    }

}
