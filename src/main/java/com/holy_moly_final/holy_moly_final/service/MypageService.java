package com.holy_moly_final.holy_moly_final.service;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.holy_moly_final.holy_moly_final.dao.SharedDao;

@Service
public class MypageService {
    @Autowired
    SharedDao sharedDao;

    public Object selectUserAndShipmentAndInquiryCount(Object dataMap) {
        HashMap<String, Object> result = new HashMap<String, Object>();
        result.put("userInfo", this.getUserInfo(dataMap));
        result.put("shipmentBreakdown", this.getShipmentBreakdown(dataMap));
        result.put("inquiryTotalCount", this.getUserInquiryCount(dataMap));
        return result;
    }

    public Object getUserInfo(Object dataMap) {
        String sqlMapId = "Mypage.selectUserInfo";
        Object result = sharedDao.getOne(sqlMapId, dataMap);
        return result;
    }

    public Object getShipmentBreakdown(Object dataMap) {
        String sqlMapId = "Mypage.selectShipment";
        Object result = sharedDao.getList(sqlMapId, dataMap);
        return result;
    }

    public Object getUserInquiryCount(Object dataMap) {
        String sqlMapId = "Mypage.selectUserInquiryCount";
        Object result = sharedDao.getOne(sqlMapId, dataMap);
        return result;
    }

    public Object selectUserPointBreakdownAndTotalPoint(Object dataMap) {
        HashMap<String, Object> result = new HashMap<String, Object>();
        result.put("pointBreakdown", this.getUserPointBreakdown(dataMap));
        result.put("totalPoint", this.getUserTotalPoint(dataMap));
        return result;
    }

    public Object getUserPointBreakdown(Object dataMap) {
        String sqlMapId = "Mypage.selectUserPointBreakdown";
        Object result = sharedDao.getList(sqlMapId, dataMap);
        return result;
    }

    public Object getUserTotalPoint(Object dataMap) {
        String sqlMapId = "Mypage.selectUserTotalPoint";
        Object result = sharedDao.getOne(sqlMapId, dataMap);
        return result;
    }

    public Object getUserInfoFormyinfo(Object dataMap) {
        String sqlMapId = "Mypage.selectUserInfoForMyinfo";
        Object result = sharedDao.getOne(sqlMapId, dataMap);
        return result;
    }

    public Object updateAndGetUserAndShipment(Object dataMap) {
        HashMap<String, Object> result = new HashMap<String, Object>();
        result.put("updateUserInfo", this.updateUserInfo(dataMap));
        result.put("userInfo", this.getUserInfo(dataMap));
        result.put("shipmentBreakdown", this.getShipmentBreakdown(dataMap));
        result.put("inquiryTotalCount", this.getUserInquiryCount(dataMap));
        return result;
    }

    public Object updateUserInfo(Object dataMap) {
        String sqlMapId = "Mypage.updateUserInfo";
        Object result = sharedDao.update(sqlMapId, dataMap);
        return result;
    }




    public Object insertUserInfoAndgetListForAdmin(Object dataMap) {
        HashMap<String, Object> result = new HashMap<String, Object>();
        result.put("insertUserInfo", this.insertUserInfo(dataMap));
        result.put("userList", this.getListFotUser(dataMap));
        result.put("totalCount", this.getCountUsers(dataMap));
        return result;
    }

    public Object insertUserInfo(Object dataMap) {
        String sqlMapId = "Admin.insertUserDataForAdmin";
        Object result = sharedDao.insert(sqlMapId, dataMap);
        return result;
    }

    public Object getListAndPaginationsForUser(Object dataMap) {
        HashMap<String, Object> result = new HashMap<String, Object>();
        result.put("userList", this.getListFotUser(dataMap));
        result.put("paginations", this.paginationsForUser(dataMap));
        result.put("totalCount", this.getCountUsers(dataMap));
        return result;
    }

    public Object getListFotUser(Object dataMap) {
        String sqlMapId = "Admin.selectUserList";
        Object result = sharedDao.getList(sqlMapId, dataMap);
        return result;
    }

    public Object paginationsForUser(Object dataMap) {
        String sqlMapId = "Admin.selectUsersPaginations";
        Object result = sharedDao.getList(sqlMapId, dataMap);
        return result;
    }

    public Object getCountUsers(Object dataMap) {
        String sqlMapId = "Admin.selectUsersCount";
        Object result = sharedDao.getOne(sqlMapId, dataMap);
        return result;
    }
}
