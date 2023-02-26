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

import com.holy_moly_final.holy_moly_final.service.CsService;

@Controller
@RequestMapping(value = "/cs")
public class CsController {
    @Autowired
    CsService csService;

    @RequestMapping(value = "/noticeList/{currentPage}", method = RequestMethod.GET)
    public ModelAndView noticeList(@RequestParam Map<String, Object> params, @PathVariable int currentPage,
            ModelAndView modelAndView) {
        params.put("currentPage", currentPage);
        Object resultMap = csService.getListWithPagination(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("cs/noticeList");
        return modelAndView;
    }

    @RequestMapping(value = "/noticeView/{COMMONBOARD_UID}", method = RequestMethod.GET)
    public ModelAndView noticeView(@RequestParam Map<String, Object> params, @PathVariable String COMMONBOARD_UID,
            ModelAndView modelAndView) {

        params.put("COMMONBOARD_UID", COMMONBOARD_UID);
        Object resultMap = csService.getOneWithAppendViews(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("cs/noticeView");
        return modelAndView;
    }

}
