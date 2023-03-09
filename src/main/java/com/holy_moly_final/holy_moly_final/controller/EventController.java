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

import com.holy_moly_final.holy_moly_final.service.EventService;

@Controller
@RequestMapping(value = "/event")
public class EventController {
    @Autowired
    EventService eventService;

    @RequestMapping(value = "/eventList/{currentPage}", method = RequestMethod.GET)
    public ModelAndView eventList(@RequestParam Map<String, Object> params, @PathVariable int currentPage,
            ModelAndView modelAndView) {
        params.put("currentPage", currentPage);
        Object resultMap = eventService.getListWithPagination(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("event/eventList");
        return modelAndView;
    }

    @RequestMapping(value = "/eventView", method = RequestMethod.GET)
    public ModelAndView eventView(@RequestParam Map<String, Object> params,
            ModelAndView modelAndView) {

        modelAndView.setViewName("event/eventView");
        return modelAndView;
    }

}
