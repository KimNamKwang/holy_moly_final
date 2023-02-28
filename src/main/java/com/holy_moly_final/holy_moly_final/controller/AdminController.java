package com.holy_moly_final.holy_moly_final.controller;

import java.io.BufferedWriter;
import java.io.Console;
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

import com.holy_moly_final.holy_moly_final.service.AdminService;
import com.holy_moly_final.holy_moly_final.service.CommonService;

@Controller
@RequestMapping(value = "/admin")
public class AdminController {

    @Autowired
    AdminService adminService;

    @RequestMapping(value = "adminBoard", method = RequestMethod.GET)
    public ModelAndView adminBoard(@RequestParam Map<String, Object> params,
            ModelAndView modelAndView) {

        modelAndView.setViewName("admin/adminBoard");
        return modelAndView;
    }

    @RequestMapping(value = "adminBoardCreate", method = RequestMethod.GET)
    public ModelAndView adminBoardCreate(@RequestParam Map<String, Object> params,
            ModelAndView modelAndView) {

        modelAndView.setViewName("admin/adminBoardCreate");
        return modelAndView;
    }

    @RequestMapping(value = "adminBoardUpdate", method = RequestMethod.GET)
    public ModelAndView adminBoardUpdate(@RequestParam Map<String, Object> params,
            ModelAndView modelAndView) {

        modelAndView.setViewName("admin/adminBoardUpdate");
        return modelAndView;
    }

    @RequestMapping(value = "adminInquiry", method = RequestMethod.GET)
    public ModelAndView adminInquiry(@RequestParam Map<String, Object> params,
            ModelAndView modelAndView) {

        modelAndView.setViewName("admin/adminInquiry");
        return modelAndView;
    }

    @RequestMapping(value = "adminUserCreate", method = RequestMethod.GET)
    public ModelAndView adminUserCreate(@RequestParam Map<String, Object> params,
            ModelAndView modelAndView) {

        modelAndView.setViewName("admin/adminUserCreate");
        return modelAndView;
    }

    @RequestMapping(value = "adminUsers", method = RequestMethod.GET)
    public ModelAndView adminUsers(@RequestParam Map<String, Object> params,
            ModelAndView modelAndView) {
                Object resultMap = adminService.getListAndPaginationsForUser(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("admin/adminUsers");
        return modelAndView;
    }

    @RequestMapping(value = "/userInsert", method = RequestMethod.GET)
    public ModelAndView userInsert(@RequestParam Map<String, Object> params,
            ModelAndView modelAndView) {
        Object resultMap = adminService.insertUserInfoAndgetListForAdmin(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("admin/adminUsers");
        return modelAndView;
    }

    @RequestMapping(value = "/userUpdate", method = RequestMethod.GET)
    public ModelAndView userUpdate(@RequestParam Map<String, Object> params,
            ModelAndView modelAndView) {
                Object resultMap = adminService.updateUserInfoAndgetListForAdmin(params);
                modelAndView.addObject("resultMap", resultMap);
                modelAndView.setViewName("admin/adminUsers");
        return modelAndView;
    
   }

    @RequestMapping(value = "/adminUserUpdate", method = RequestMethod.GET)
    public ModelAndView adminUserUpdate(@RequestParam Map<String, Object> params,
            ModelAndView modelAndView) {
                Object resultMap = adminService.getUserInfo(params);
                modelAndView.addObject("resultMap", resultMap);
                modelAndView.setViewName("admin/adminUserUpdate");
        return modelAndView;
    }

    // delete 할 애
    @RequestMapping(value = "/adminUserdelete", method = RequestMethod.GET)
    public ModelAndView adminUserdelete(@RequestParam Map<String, Object> params,
            ModelAndView modelAndView) {
                Object resultMap = adminService.getUserInfo(params);
                modelAndView.addObject("resultMap", resultMap);
                modelAndView.setViewName("admin/adminUserUpdate");
        return modelAndView;
    }

}

