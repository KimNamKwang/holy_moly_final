package com.holy_moly_final.holy_moly_final.controller;

import java.io.BufferedWriter;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.security.Principal;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import org.springframework.web.servlet.ModelAndView;

import com.holy_moly_final.holy_moly_final.configurations.PrincipalUser;
import com.holy_moly_final.holy_moly_final.service.MypageService;

@Controller
@RequestMapping(value = "/mypage")
public class MypageController {

    @Autowired
    MypageService mypageService;

    @Autowired
    BCryptPasswordEncoder bcryptPasswordEncoder;

    @RequestMapping(value = { "mypage", "/", "" }, method = RequestMethod.POST)
    public ModelAndView mypage(@AuthenticationPrincipal PrincipalUser principalUser,
            @RequestParam Map<String, Object> params,
            ModelAndView modelAndView) {

        boolean checkPassword = bcryptPasswordEncoder.matches((String) params.get("checkPassword"),
                principalUser.getPassword());
        System.out.println(checkPassword);
        String moveUrl;
        Object resultMap;
        if (checkPassword) {
            resultMap = mypageService.selectUserAndShipmentAndInquiryCount(params);
            moveUrl = "/mypage/mypage";
        } else {
            params.put("msg", "비밀번호가 일치하지 않습니다.");
            moveUrl = "/mypage/myinfoPass";
            resultMap = params;
        }
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName(moveUrl);
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
        String PASSWORD = bcryptPasswordEncoder.encode((String) params.get("PASSWORD_NOT_ENCODED"));
        params.put("PASSWORD", PASSWORD);
        Object resultMap = mypageService.updateAndGetUserAndShipment(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("mypage/mypage");
        return modelAndView;

    }

    @RequestMapping(value = "/myinfoPass", method = RequestMethod.POST)
    public ModelAndView myinfoPass(@RequestParam Map<String, Object> params,
            ModelAndView modelAndView) {
        Object resultMap = params;
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("mypage/myinfoPass");
        return modelAndView;
    }

}
