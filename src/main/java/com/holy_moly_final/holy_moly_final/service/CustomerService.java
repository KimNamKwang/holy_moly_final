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

    public Object getFAQList(Object dataMap) {
        String sqlMapId = "Customer.selectFAQLists";
        Object resultList = sharedDao.getList(sqlMapId, dataMap);
        return resultList;
    }

}
