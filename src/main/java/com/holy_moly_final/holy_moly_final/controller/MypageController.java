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

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import org.springframework.web.servlet.ModelAndView;

import com.holy_moly_final.holy_moly_final.service.MypageService;

@Controller
@RequestMapping(value = "/mypage")
public class MypageController {

    @Autowired
    MypageService mypageService;

    @RequestMapping(value = {"mypage", "/", ""}, method = RequestMethod.GET)
    public ModelAndView mypage(@RequestParam Map<String, Object> params,
            ModelAndView modelAndView) {
            Object resultMap = mypageService.selectUserAndShipmentAndInquiryCount(params);
            modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("/mypage/mypage");
        return modelAndView;
    }

    @RequestMapping(value = "/myPoint", method = RequestMethod.GET)
    public ModelAndView myPoint(@RequestParam Map<String, Object> params,
            ModelAndView modelAndView) {

            Object resultMap = mypageService.selectUserPointBreakdownAndTotalPoint(params);
            modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("mypage/myPoint");
        return modelAndView;
    }

    @RequestMapping(value = "/myinfo", method = RequestMethod.GET)
    public ModelAndView myinfo(@RequestParam Map<String, Object> params,
            ModelAndView modelAndView) {

            Object resultMap = mypageService.getUserInfoFormyinfo(params);
            modelAndView.addObject("resultMap", resultMap);

        modelAndView.setViewName("mypage/myinfo");
        return modelAndView;
    }

    @RequestMapping(value = "/userUpdate", method = RequestMethod.GET)
    public ModelAndView userUpdate(@RequestParam Map<String, Object> params,
            ModelAndView modelAndView) {
                Object resultMap = mypageService.updateAndGetUserAndShipment(params);
                modelAndView.addObject("resultMap", resultMap);
                modelAndView.setViewName("mypage/mypage");
        return modelAndView;
    
   }

    @RequestMapping(value = "/myinfoPass", method = RequestMethod.GET)
    public ModelAndView myinfoPass(@RequestParam Map<String, Object> params,
            ModelAndView modelAndView) {

        modelAndView.setViewName("mypage/myinfoPass");
        return modelAndView;
    }

}
