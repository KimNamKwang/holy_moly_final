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
@RequestMapping(value = "/delivery")
public class DeliveryController {

    @RequestMapping(value = "/trackShipInquiry_fail", method = RequestMethod.POST)
    public ModelAndView trackShipInquiry_fail(@RequestParam Map<String, Object> params,
            ModelAndView modelAndView) {

        modelAndView.setViewName("delivery/trackShipInquiry_fail");
        return modelAndView;
    }

    @RequestMapping(value = "/trackShipInquiry", method = RequestMethod.POST)
    public ModelAndView trackShipInquiry(@RequestParam Map<String, Object> params,
            ModelAndView modelAndView) {

        modelAndView.setViewName("delivery/trackShipInquiry");
        return modelAndView;
    }

    @RequestMapping(value = "/trackShipment", method = RequestMethod.POST)
    public ModelAndView trackShipment(@RequestParam Map<String, Object> params,
            ModelAndView modelAndView) {

        modelAndView.setViewName("delivery/trackShipment");
        return modelAndView;
    }

}