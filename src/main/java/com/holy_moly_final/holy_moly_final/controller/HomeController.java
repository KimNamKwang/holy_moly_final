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

import com.holy_moly_final.holy_moly_final.service.HomeService;
import com.holy_moly_final.holy_moly_final.utils.CommonUtils;

@Controller
@RequestMapping(value = "/home")
public class HomeController {

    @Autowired
    CommonUtils commonUtils;

    @Autowired
    HomeService homeService;

    @RequestMapping(value = "/payment_completed", method = RequestMethod.GET)
    public ModelAndView payment_completed(@RequestParam Map<String, Object> params,
            ModelAndView modelAndView) {
        Object resultMap = params;
        if ("".equals(params.get("REQUEST_UID"))) {
            params.put("REQUEST_UID", "REQ_10");
        }
        params.put("POINT_UID", commonUtils.getUniqueSequence());
        params.put("PROGRESS_STATUS_UID", commonUtils.getUniqueSequence());
        params.put("MYPAGE_UID", commonUtils.getUniqueSequence());
        homeService.insertMulti(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("home/payment_completed");
        return modelAndView;
    }

    @RequestMapping(value = "/reservationForHome", method = RequestMethod.GET)
    public ModelAndView reservationForHome(@RequestParam Map<String, Object> params,
            ModelAndView modelAndView) {

        modelAndView.setViewName("home/reservationForHome");
        return modelAndView;
    }

    @RequestMapping(value = "/reservationForHomeBulk", method = RequestMethod.GET)
    public ModelAndView reservationForHomeBulk(@RequestParam Map<String, Object> params,
            ModelAndView modelAndView) {

        modelAndView.setViewName("home/reservationForHomeBulk");
        return modelAndView;
    }

    @RequestMapping(value = "/reservationForHomeBulkStep2", method = RequestMethod.GET)
    public ModelAndView reservationForHomeBulkStep2(@RequestParam Map<String, Object> params,
            ModelAndView modelAndView) {
        Object resultMap = params;
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("home/reservationForHomeBulkStep2");
        return modelAndView;
    }

    @RequestMapping(value = "/reservationForHomeBulkStep3", method = RequestMethod.GET)
    public ModelAndView reservationForHomeBulkStep3(@RequestParam Map<String, Object> params,
            ModelAndView modelAndView) {
        Object resultMap = params;
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("home/reservationForHomeBulkStep3");
        return modelAndView;
    }

    @RequestMapping(value = "/reservationForHomeStep2", method = RequestMethod.GET)
    public ModelAndView reservationForHomeStep2(@RequestParam Map<String, Object> params,
            ModelAndView modelAndView) {
        Object resultMap = params;
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("home/reservationForHomeStep2");
        return modelAndView;
    }

    @RequestMapping(value = "/reservationForHomeStep3", method = RequestMethod.GET)
    public ModelAndView reservationForHomeStep3(@RequestParam Map<String, Object> params,
            ModelAndView modelAndView) {
        Object resultMap = params;
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("home/reservationForHomeStep3");
        return modelAndView;
    }

    @RequestMapping(value = "/termsForHome", method = RequestMethod.GET)
    public ModelAndView termsForHome(@RequestParam Map<String, Object> params,
            ModelAndView modelAndView) {

        modelAndView.setViewName("home/termsForHome");
        return modelAndView;
    }

    @RequestMapping(value = "/termsForHomeBulk", method = RequestMethod.GET)
    public ModelAndView termsForHomeBulk(@RequestParam Map<String, Object> params,
            ModelAndView modelAndView) {

        modelAndView.setViewName("home/termsForHomeBulk");
        return modelAndView;
    }

    @RequestMapping(value = "/reservationCollect", method = RequestMethod.GET)
    public ModelAndView reservationCollect(@RequestParam Map<String, Object> params,
            ModelAndView modelAndView) {

        modelAndView.setViewName("home/reservationCollect");
        return modelAndView;
    }

    @RequestMapping(value = "/reservationInfo", method = RequestMethod.GET)
    public ModelAndView reservationInfo(@RequestParam Map<String, Object> params,
            ModelAndView modelAndView) {

        modelAndView.setViewName("home/reservationInfo");
        return modelAndView;
    }

    @RequestMapping(value = "/reservationReceiver", method = RequestMethod.GET)
    public ModelAndView reservationReceiver(@RequestParam Map<String, Object> params,
            ModelAndView modelAndView) {

        modelAndView.setViewName("home/reservationReceiver");
        return modelAndView;
    }

    @RequestMapping(value = "/reservationSender", method = RequestMethod.GET)
    public ModelAndView reservationSender(@RequestParam Map<String, Object> params,
            ModelAndView modelAndView) {
        Object resultMap = homeService.getUserInfo(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("home/reservationSender");
        return modelAndView;
    }

    @RequestMapping(value = "/payment", method = RequestMethod.GET)
    public ModelAndView payment(@RequestParam Map<String, Object> params,
            ModelAndView modelAndView) {
        params.put("TRACKING_NUMBER", commonUtils.getUniqueSequence());
        Object resultMap = params;
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("home/payment");
        return modelAndView;
    }

    @RequestMapping(value = "/reservationPaymentInfo", method = RequestMethod.GET)
    public ModelAndView reservationPaymentInfo(@RequestParam Map<String, Object> params,
            ModelAndView modelAndView) {

        modelAndView.setViewName("home/reservationPaymentInfo");
        return modelAndView;
    }

}
