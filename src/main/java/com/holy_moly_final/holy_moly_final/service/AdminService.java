package com.holy_moly_final.holy_moly_final.service;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.holy_moly_final.holy_moly_final.dao.SharedDao;

@Service
public class AdminService {
    @Autowired
    SharedDao sharedDao;

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

    public Object updateUserInfoAndgetListForAdmin(Object dataMap) {
        HashMap<String, Object> result = new HashMap<String, Object>();
        result.put("updateUserInfo", this.updateUserInfo(dataMap));
        result.put("userList", this.getListFotUser(dataMap));
        result.put("totalCount", this.getCountUsers(dataMap));
        return result;
    }

    public Object updateUserInfo(Object dataMap) {
        String sqlMapId = "Admin.updateUserDataForAdmin";
        Object result = sharedDao.update(sqlMapId, dataMap);
        return result;
    }

    public Object getUserInfo(Object dataMap) {
        String sqlMapId = "Admin.selectUserInfo";
        Object result = sharedDao.getOne(sqlMapId, dataMap);
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
