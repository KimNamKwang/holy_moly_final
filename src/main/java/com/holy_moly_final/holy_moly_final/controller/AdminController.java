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
@RequestMapping(value = "/admin")
public class AdminController {

    @RequestMapping(value = "adminBoard", method = RequestMethod.POST)
    public ModelAndView adminBoard(@RequestParam Map<String, Object> params,
            ModelAndView modelAndView) {

        modelAndView.setViewName("admin/adminBoard");
        return modelAndView;
    }

    @RequestMapping(value = "adminBoardCreate", method = RequestMethod.POST)
    public ModelAndView adminBoardCreate(@RequestParam Map<String, Object> params,
            ModelAndView modelAndView) {

        modelAndView.setViewName("admin/adminBoardCreate");
        return modelAndView;
    }

    @RequestMapping(value = "adminBoardUpdate", method = RequestMethod.POST)
    public ModelAndView adminBoardUpdate(@RequestParam Map<String, Object> params,
            ModelAndView modelAndView) {

        modelAndView.setViewName("admin/adminBoardUpdate");
        return modelAndView;
    }

    @RequestMapping(value = "adminInquiry", method = RequestMethod.POST)
    public ModelAndView adminInquiry(@RequestParam Map<String, Object> params,
            ModelAndView modelAndView) {

        modelAndView.setViewName("admin/adminInquiry");
        return modelAndView;
    }

    @RequestMapping(value = "adminUserCreate", method = RequestMethod.POST)
    public ModelAndView adminUserCreate(@RequestParam Map<String, Object> params,
            ModelAndView modelAndView) {

        modelAndView.setViewName("admin/adminUserCreate");
        return modelAndView;
    }

    @RequestMapping(value = "adminUsers", method = RequestMethod.POST)
    public ModelAndView adminUsers(@RequestParam Map<String, Object> params,
            ModelAndView modelAndView) {

        modelAndView.setViewName("admin/adminUsers");
        return modelAndView;
    }

    @RequestMapping(value = "adminUserUpdate", method = RequestMethod.POST)
    public ModelAndView adminUserUpdate(@RequestParam Map<String, Object> params,
            ModelAndView modelAndView) {

        modelAndView.setViewName("admin/adminUserUpdate");
        return modelAndView;
    }

}
