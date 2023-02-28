package com.holy_moly_final.holy_moly_final.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.holy_moly_final.holy_moly_final.dao.SharedDao;
import com.holy_moly_final.holy_moly_final.utils.Paginations;

@Service
public class DeliveryService {
    @Autowired
    SharedDao sharedDao;

    public Object insertMulti(Object dataMap) {
        String sqlMapId = "AttachFile.insertMulti";
        Object result = sharedDao.insert(sqlMapId, dataMap);
        return result;
    }

    public Object getTotal(Object dataMap) {
        String sqlMapId = "Common.selectTotal";
        Object result = sharedDao.getOne(sqlMapId, dataMap);
        return result;
    }

    public Object getOneForTrackShipInquiry(Object dataMap) {
        String sqlMapId = "Delivery.selectOneForTrackShipInquiry";
        Object result = sharedDao.getOne(sqlMapId, dataMap);
        return result;
    }

    public Object getListForTrackShipInquiry(Object dataMap) {
        String sqlMapId = "Delivery.selectListForTrackShipInquiry";
        Object result = sharedDao.getList(sqlMapId, dataMap);
        return result;
    }

    public Object getListAndOneForTrackShipInquiry(Object dataMap) {
        HashMap<String, Object> result = new HashMap<String, Object>();
        result.put("resultOne", this.getOneForTrackShipInquiry(dataMap));
        result.put("resultList", this.getListForTrackShipInquiry(dataMap));
        return result;
    }

    public Object getTrackingNumberByPhoneAndPW(Object dataMap) {
        String sqlMapId = "Delivery.selectTrackingNumForTrackinNumInquiry";
        Object result = sharedDao.getOne(sqlMapId, dataMap);
        return result;
    }

    public Object update(Object dataMap) {
        String sqlMapId = "Common.updateByUID";
        Object result = sharedDao.update(sqlMapId, dataMap);
        return result;
    }

    public Object insertOne(Object dataMap) {
        String sqlMapId = "Common.insertWithUID";
        Object result = sharedDao.insert(sqlMapId, dataMap);
        return result;
    }

    public Object delete(Object dataMap) {
        String sqlMapId = "Common.deleteByUID";
        Object result = sharedDao.delete(sqlMapId, dataMap);
        return result;
    }

    public Object deleteMulti(Object dataMap) {
        String sqlMapId = "Common.deleteMultiByUIDs";
        Object result = sharedDao.delete(sqlMapId, dataMap);
        return result;
    }
}
