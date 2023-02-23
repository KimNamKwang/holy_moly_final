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
@RequestMapping(value = "/mypage")
public class MypageController {

    @RequestMapping(value = "/mypageMyinfo", method = RequestMethod.GET)
    public ModelAndView myinfo(@RequestParam Map<String, Object> params,
            ModelAndView modelAndView) {

        modelAndView.setViewName("mypage/myinfo");
        return modelAndView;
    }

    @RequestMapping(value = "/myinfoPass", method = RequestMethod.GET)
    public ModelAndView myinfoPass(@RequestParam Map<String, Object> params,
            ModelAndView modelAndView) {

        modelAndView.setViewName("mypage/myinfoPass");
        return modelAndView;
    }

    @RequestMapping(value = "/mypage", method = RequestMethod.GET)
    public ModelAndView mypage(@RequestParam Map<String, Object> params,
            ModelAndView modelAndView) {

        modelAndView.setViewName("mypage/mypage");
        return modelAndView;
    }

    @RequestMapping(value = "/myPoint", method = RequestMethod.GET)
    public ModelAndView myPoint(@RequestParam Map<String, Object> params,
            ModelAndView modelAndView) {

        modelAndView.setViewName("mypage/myPoint");
        return modelAndView;
    }

}
