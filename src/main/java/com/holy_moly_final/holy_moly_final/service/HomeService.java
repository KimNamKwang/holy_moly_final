package com.holy_moly_final.holy_moly_final.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.holy_moly_final.holy_moly_final.dao.SharedDao;

@Service
public class HomeService {
    @Autowired
    SharedDao sharedDao;

    public Object insertshipment(Object dataMap) {
        Object TOTAL_PRICE = (((Map<String, Object>) dataMap).get("TOTAL_PRICE"));
        TOTAL_PRICE = Integer.parseInt(TOTAL_PRICE);
        ((Map<String, Object>) dataMap).put("TOTAL_PRICE", TOTAL_PRICE);

        String sqlMapId = "Home.insertShipment";
        Object result = sharedDao.insert(sqlMapId, dataMap);
        return result;
    }

    public Object insertPoint(Object dataMap) {
        String sqlMapId = "";
        Object result = sharedDao.insert(sqlMapId, dataMap);
        return result;
    }

}
