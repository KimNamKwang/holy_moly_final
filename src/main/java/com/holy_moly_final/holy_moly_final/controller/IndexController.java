package com.holy_moly_final.holy_moly_final.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.holy_moly_final.holy_moly_final.service.IndexService;

@Controller
public class IndexController {
    @Autowired
    IndexService indexService;

    @RequestMapping(value = { "/", "", "/index" }, method = RequestMethod.GET)
    public ModelAndView guideHome(@RequestParam Map<String, Object> params,
            ModelAndView modelAndView) {
        Object resultMap = indexService.getNoticeList(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("index");
        return modelAndView;
    }
}
