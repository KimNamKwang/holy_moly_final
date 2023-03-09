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
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import org.springframework.web.servlet.ModelAndView;

import com.holy_moly_final.holy_moly_final.service.AdminService;
import com.holy_moly_final.holy_moly_final.service.CommonService;
import com.holy_moly_final.holy_moly_final.utils.CommonUtils;

@Controller
@RequestMapping(value = "/admin")
public class AdminController {

    @Autowired
    AdminService adminService;

    @Autowired
    CommonUtils commonUtils;

    @Autowired
    BCryptPasswordEncoder bcryptPasswordEncoder;

    @RequestMapping(value = "adminBoard/{currentPage}", method = RequestMethod.GET)
    public ModelAndView adminBoard(@RequestParam Map<String, Object> params, @PathVariable String currentPage,
            ModelAndView modelAndView) {
        params.put("pageScale", 10);
        params.put("currentPage", Integer.parseInt(currentPage));
        Object resultMap = adminService.getListAndPaginationsForBoard(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("admin/adminBoard");
        return modelAndView;
    }

    @RequestMapping(value = "adminBoardCreate", method = RequestMethod.GET)
    public ModelAndView adminBoardCreate(@RequestParam Map<String, Object> params,
            ModelAndView modelAndView) {

        modelAndView.setViewName("admin/adminBoardCreate");
        return modelAndView;
    }

    @RequestMapping(value = "/boardInsert", method = RequestMethod.POST)
    public ModelAndView boardInsert(@RequestParam Map<String, Object> params,
            ModelAndView modelAndView) {
        params.put("COMMONBOARD_UID", commonUtils.getUniqueSequence());

        if (params.get("BOARD_UID") == "BOARD_EVENT") {
            params.put("EVENT_DATE_UID", commonUtils.getUniqueSequence());
        }
        Object resultMap = adminService.insertBoardAndgetListForAdmin(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("admin/adminBoard");
        return modelAndView;
    }

    @RequestMapping(value = "/adminBoardUpdate", method = RequestMethod.GET)
    public ModelAndView adminBoardUpdate(@RequestParam Map<String, Object> params,
            ModelAndView modelAndView) {
        Object resultMap = adminService.getBoard(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("admin/adminBoardUpdate");
        return modelAndView;
    }

    @RequestMapping(value = "/boardDelete", method = RequestMethod.GET)
    public ModelAndView adminBoarddelete(@RequestParam Map<String, Object> params,
            ModelAndView modelAndView) {
        Object resultMap = adminService.deleteBoardAndgetListForAdmin(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("admin/adminBoard");
        return modelAndView;
    }

    @RequestMapping(value = "/adminInquiry/{currentPage}", method = RequestMethod.GET)
    public ModelAndView adminInquiry(@RequestParam Map<String, Object> params, @PathVariable String currentPage,
            ModelAndView modelAndView) {
        params.put("pageScale", 10);
        params.put("currentPage", Integer.parseInt(currentPage));
        Object resultMap = adminService.getInquiryListWithPagination(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("admin/adminInquiry");
        return modelAndView;
    }

    // Users

    @RequestMapping(value = "/adminUserCreate", method = RequestMethod.GET)
    public ModelAndView adminUserCreate(@RequestParam Map<String, Object> params,
            ModelAndView modelAndView) {

        modelAndView.setViewName("admin/adminUserCreate");
        return modelAndView;
    }

    @RequestMapping(value = "/adminUsers/{currentPage}", method = RequestMethod.GET)
    public ModelAndView adminUsers(@RequestParam Map<String, Object> params, @PathVariable String currentPage,
            ModelAndView modelAndView) {
        params.put("pageScale", 10);
        params.put("currentPage", Integer.parseInt(currentPage));
        Object resultMap = adminService.getListAndPaginationsForUser(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("admin/adminUsers");
        return modelAndView;
    }

    @RequestMapping(value = "/adminUpdateShipmentProgress", method = RequestMethod.GET)
    public ModelAndView adminUpdateShipmentProgress(@RequestParam Map<String, Object> params,
            ModelAndView modelAndView) {
        if ("PICKUP".equals(params.get("PROGRESS_STATUS_TYPE"))) {
            params.put("PROGRESS_STATUS_DESCRIPTION", "수거완료");
        } else if ("IN_PROGRESS".equals(params.get("PROGRESS_STATUS_TYPE"))) {
            params.put("PROGRESS_STATUS_DESCRIPTION", "배송중");
        } else if ("COMPLETE".equals(params.get("PROGRESS_STATUS_TYPE"))) {
            params.put("PROGRESS_STATUS_DESCRIPTION", "배송완료");
        }
        params.put("PROGRESS_STATUS_UID", commonUtils.getUniqueSequence());
        Object resultMap = adminService.updateShipmentprogAndGetListForShipment(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("admin/adminManagementShipment");
        return modelAndView;
    }

    @RequestMapping(value = "/adminManagementShipment/{currentPage}", method = RequestMethod.GET)
    public ModelAndView adminManagementShipment(@RequestParam Map<String, Object> params,
            @PathVariable String currentPage,
            ModelAndView modelAndView) {
        params.put("pageScale", 10);
        params.put("currentPage", Integer.parseInt(currentPage));
        Object resultMap = adminService.getListAndPaginationsForShipment(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("admin/adminManagementShipment");
        return modelAndView;
    }

    @RequestMapping(value = "/adminShipmentInfo", method = RequestMethod.GET)
    public ModelAndView adminShipmentInfo(@RequestParam Map<String, Object> params,
            ModelAndView modelAndView) {
        Object resultMap = adminService.getShipmentInfo(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("admin/adminShipmentInfo");
        return modelAndView;
    }

    @RequestMapping(value = "/userInsert", method = RequestMethod.POST)
    public ModelAndView userInsert(@RequestParam Map<String, Object> params,
            ModelAndView modelAndView) {
        String PASSWORD = bcryptPasswordEncoder.encode((String) params.get("PASSWORD_NOT_ENCODED"));
        params.put("PASSWORD", PASSWORD);
        Object resultMap = adminService.insertUserInfoAndgetListForAdmin(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("admin/adminUsers");
        return modelAndView;
    }

    @RequestMapping(value = "/updateInquiryAnswer", method = RequestMethod.GET)
    public ModelAndView insertInquiryAnswer(@RequestParam Map<String, Object> params,
            ModelAndView modelAndView) {
        Object resultMap = adminService.updateInquiryAnswers(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("admin/adminInquiry");
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

    @RequestMapping(value = "/userDelete", method = RequestMethod.GET)
    public ModelAndView adminUserdelete(@RequestParam Map<String, Object> params,
            ModelAndView modelAndView) {
        Object resultMap = adminService.deleteUserInfoAndgetListForAdmin(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("admin/adminUsers");
        return modelAndView;
    }

}
