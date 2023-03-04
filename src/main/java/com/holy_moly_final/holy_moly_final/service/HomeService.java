package com.holy_moly_final.holy_moly_final.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.holy_moly_final.holy_moly_final.dao.SharedDao;

@Service
public class HomeService {
    @Autowired
    SharedDao sharedDao;

    public Object insertMulti(Object dataMap) {
        Object result = this.insertshipment(dataMap);
        result = this.insertProGressStatus(dataMap);
        Object USER_UID = (((Map<String, Object>) dataMap).get("USER_UID"));
        if (!("".equals(USER_UID))) {
            result = this.insertMypage(dataMap);
            Object usePoint = (((Map<String, Object>) dataMap).get("usePoint"));
            System.out.print(usePoint);
            if (Integer.parseInt((String) usePoint)  != 0) {
                result = this.insertPoint(dataMap);
            }
        }

        return result;
    }

    public Object insertshipment(Object dataMap) {
        Object TOTAL_PRICE = (((Map<String, Object>) dataMap).get("TOTAL_PRICE"));
        TOTAL_PRICE = Integer.parseInt((String) TOTAL_PRICE);
        ((Map<String, Object>) dataMap).put("TOTAL_PRICE", TOTAL_PRICE);

        String sqlMapId = "Home.insertShipment";
        Object result = sharedDao.insert(sqlMapId, dataMap);
        return result;
    }

    public Object insertProGressStatus(Object dataMap) {
        String sqlMapId = "Home.insertProGressStatusTypeByTrackingNumber";
        Object result = sharedDao.insert(sqlMapId, dataMap);
        return result;
    }

    public Object insertPoint(Object dataMap) {
        String sqlMapId = "Home.insertPointByUser_UID";
        Object result = sharedDao.insert(sqlMapId, dataMap);
        return result;
    }

    public Object insertMypage(Object dataMap) {
        String sqlMapId = "Home.insertMypageByUser_UID";
        Object result = sharedDao.insert(sqlMapId, dataMap);
        return result;
    }

}
