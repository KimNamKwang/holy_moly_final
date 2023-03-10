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
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import org.springframework.web.servlet.ModelAndView;

import com.holy_moly_final.holy_moly_final.service.CustomerService;
import com.holy_moly_final.holy_moly_final.utils.CommonUtils;

@Controller
@RequestMapping(value = "/customer")
public class CustomerController {
    @Autowired
    CustomerService customerService;
    @Autowired
    CommonUtils commonUtils;

    @RequestMapping(value = "/faqList", method = RequestMethod.GET)
    public ModelAndView faqList(@RequestParam Map<String, Object> params,
            ModelAndView modelAndView) {
        Object resultMap = customerService.getFAQListWithPaginations(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("customer/faqList");
        return modelAndView;
    }

    @RequestMapping(value = "/inquiry", method = RequestMethod.GET)
    public ModelAndView inquiry(@RequestParam Map<String, Object> params,
            ModelAndView modelAndView) {

        modelAndView.setViewName("customer/inquiry");
        return modelAndView;
    }

    @RequestMapping(value = "/insertinquiry", method = RequestMethod.GET)
    public ModelAndView insertinquiry(@RequestParam Map<String, Object> params,
            ModelAndView modelAndView) {
        params.put("INQUIRY_UID", commonUtils.getUniqueSequence());
        Object resultMap = customerService.insertInquiry(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("customer/inquiryList");
        return modelAndView;
    }

    @RequestMapping(value = "/inquiryView/{INQUIRY_UID}", method = RequestMethod.GET)
    public ModelAndView inquiryView(@RequestParam Map<String, Object> params, @PathVariable String INQUIRY_UID,
            ModelAndView modelAndView) {
        params.put("INQUIRY_UID", INQUIRY_UID);
        Object resultMap = customerService.getInquiryView(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("customer/inquiryView");
        return modelAndView;
    }

    @RequestMapping(value = "/inquiryList", method = RequestMethod.GET)
    public ModelAndView inquiryList(@RequestParam Map<String, Object> params,
            ModelAndView modelAndView) {
        Object resultMap = customerService.getPersonalInquiry(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("customer/inquiryList");
        return modelAndView;
    }

    @RequestMapping(value = "/memberInquiry", method = RequestMethod.GET)
    public ModelAndView memberInquiry(@RequestParam Map<String, Object> params,
            ModelAndView modelAndView) {

        modelAndView.setViewName("customer/memberInquiry");
        return modelAndView;
    }

}
