package com.holy_moly_final.holy_moly_final.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.holy_moly_final.holy_moly_final.dao.SharedDao;

@Service
public class AdminService {
    @Autowired
    SharedDao sharedDao;

    public Object insertUserDataForAdmin(Object dataMap) {
        String sqlMapId = "Admin.insertUserDataForAdmin";
        Object result = sharedDao.insert(sqlMapId, dataMap);
        return result;

    }
}
