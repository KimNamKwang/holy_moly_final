package com.holy_moly_final.holy_moly_final.controller;

import org.springframework.web.bind.annotation.RestController;

import com.holy_moly_final.holy_moly_final.service.CommonService;
import com.holy_moly_final.holy_moly_final.service.CustomerService;

import java.util.HashMap;
import java.util.Map;

import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.beans.factory.annotation.Autowired;

@RestController
@CrossOrigin
public class RestfulController {

    @Autowired
    CustomerService customerService;
    @Autowired
    CommonService commonService;

    @RequestMapping(value = "/forfaq/faq_type_uid/", method = RequestMethod.GET)
    public Map callFAQList(@RequestParam Map<String, Object> params) {
        Map<String, Object> resultMap = new HashMap<>();
        resultMap = (Map<String, Object>) customerService.getFAQLists(params);
        return resultMap;
    }

    @RequestMapping(value = "/forJoinStep2/id_check/", method = RequestMethod.GET)
    public Map idDuplicatedCheck(@RequestParam Map<String, Object> params) {
        Map<String, Object> resultMap = new HashMap<>();
        resultMap = (Map<String, Object>) commonService.idDuplicateCheck(params);
        return resultMap;
    }

}
