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
}
