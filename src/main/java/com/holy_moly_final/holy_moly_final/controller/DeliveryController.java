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

import com.holy_moly_final.holy_moly_final.service.DeliveryService;
import com.holy_moly_final.holy_moly_final.utils.CommonUtils;

@Controller
@RequestMapping(value = "/delivery")
public class DeliveryController {

    @Autowired
    DeliveryService deliveryService;

    @Autowired
    CommonUtils commonUtils;

    @RequestMapping(value = "/trackShipInquiry_fail", method = RequestMethod.GET)
    public ModelAndView trackShipInquiry_fail(@RequestParam Map<String, Object> params,
            ModelAndView modelAndView) {

        modelAndView.setViewName("delivery/trackShipInquiry_fail");
        return modelAndView;
    }

    @RequestMapping(value = "/trackShipInquiry", method = RequestMethod.GET)
    public ModelAndView trackShipInquiry(@RequestParam Map<String, Object> params, ModelAndView modelAndView) {
        // params.put("TRACKING_NUMBER", TRACKING_NUMBER);
        Object resultMap = deliveryService.getListAndOneForTrackShipInquiry(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("delivery/trackShipInquiry");
        if (((Map) resultMap).get("resultOne") == null) {
            modelAndView.setViewName("delivery/trackShipInquiry_fail");
        }
        return modelAndView;
    }

    @RequestMapping(value = "/trackShipment", method = RequestMethod.GET)
    public ModelAndView trackShipment(@RequestParam Map<String, Object> params,
            ModelAndView modelAndView) {
        modelAndView.setViewName("delivery/trackShipment");
        return modelAndView;
    }

    @RequestMapping(value = "/searchTrackingNumber", method = RequestMethod.GET)
    public ModelAndView searchTrackingNumber(@RequestParam Map<String, Object> params,
            ModelAndView modelAndView) {
        modelAndView.setViewName("delivery/searchTrackingNumber");
        return modelAndView;
    }

    @RequestMapping(value = "/trackingNumberInquiry", method = RequestMethod.GET)
    public ModelAndView trackingNumberInquiry(@RequestParam Map<String, Object> params,
            ModelAndView modelAndView) {
        Object resultMap = deliveryService.getTrackingNumberByPhoneAndPW(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("delivery/trackingNumberInquiry");
        if (resultMap == null) {
            modelAndView.setViewName("delivery/trackingNumberInquiry_fail");
        }
        return modelAndView;
    }

}
