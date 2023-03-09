package com.holy_moly_final.holy_moly_final.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.holy_moly_final.holy_moly_final.dao.SharedDao;
import com.holy_moly_final.holy_moly_final.utils.Paginations;

@Service
public class CustomerService {
    @Autowired
    SharedDao sharedDao;

    public Object getFAQListWithPaginations(Object dataMap) {
        HashMap<String, Object> result = new HashMap<String, Object>();
        result.put("FAQList", this.getFAQList(dataMap));
        result.put("paginations", this.paginationsForFAQList(dataMap));
        return result;
    }

    public Object getFAQListByUIDWithPaginations(Object dataMap) {
        HashMap<String, Object> result = new HashMap<String, Object>();
        result.put("FAQ_TYPE_UID", this.getFAQList(dataMap));
        result.put("paginations", this.paginationsForFAQList(dataMap));
        return result;
    }

    // public Object getFAQRegisterListByUIDWithPaginations(Object dataMap) {
    // HashMap<String, Object> result = new HashMap<String, Object>();
    // result.put("FAQ_TYPE_UID", this.getFAQ_RegisterList(dataMap));
    // result.put("paginations", this.paginationsForFAQList(dataMap));
    // return result;
    // }

    public Object getFAQLists(Object dataMap) {
        HashMap<String, Object> result = new HashMap<String, Object>();
        String faq_uid = (String) ((HashMap<String, Object>) dataMap).get("faq_type_uid");
        result.put("registerList", this.getFAQListByUid(dataMap));
        return result;

    }

    public Object getFAQListByUid(Object dataMap) {
        String sqlMapId = "Customer.selectFAQFAQListByUid";
        Object result = sharedDao.getList(sqlMapId, dataMap);
        return result;
    }

    public Object insertInquiry(Object dataMap) {
        String sqlMapId = "Customer.insertInquiry";
        Object result = sharedDao.getList(sqlMapId, dataMap);
        return result;
    }

    public Object getFAQList(Object dataMap) {
        String sqlMapId = "Customer.selectFAQLists";
        Object result = sharedDao.getList(sqlMapId, dataMap);
        return result;
    }

    public Object paginationsForFAQList(Object dataMap) {
        String sqlMapId = "Customer.selectFAQListPaginations";
        Object result = sharedDao.getList(sqlMapId, dataMap);
        return result;
    }

    public Object getPersonalInquiry(Object dataMap) {
        String sqlMapId = "Customer.selectInquiryByUid";
        Object result = sharedDao.getList(sqlMapId, dataMap);
        return result;
    }

    public Object getInquiryView(Object dataMap) {
        String sqlMapId = "Customer.selectInquiryViewByUid";
        Object result = sharedDao.getOne(sqlMapId, dataMap);
        return result;
    }

}
