package com.holy_moly_final.holy_moly_final.controller;

import org.springframework.web.bind.annotation.RestController;

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

    // @RequestMapping(value = "/api/v1/helloworld", method = RequestMethod.GET)
    // public String helloWorld() {

    // return "Hello World!";

    // }

    // // params - title:"learn ajax", description:"we learn with ajax" postman에서
    // // 넣어줄것
    // @RequestMapping(value = "/api/v1/requestParams", method = RequestMethod.GET)
    // public Map requestParams(@RequestParam Map<String, Object> params) {
    // Map<String, Object> result = new HashMap<String, Object>();
    // result.putAll(params);
    // result.put("id", "Durante");
    // return result;
    // }

    // // currentPage = 1
    @RequestMapping(value = "/forfaq/faq_type_uid/", method = RequestMethod.GET)
    public Map requestParamsWithDB(@RequestParam Map<String, Object> params) {
        Map<String, Object> resultMap = new HashMap<>();
        resultMap = (Map<String, Object>) customerService.getFAQListByUIDWithPaginations(params);
        return resultMap;
    }
}
