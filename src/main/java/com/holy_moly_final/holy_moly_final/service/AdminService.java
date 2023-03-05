package com.holy_moly_final.holy_moly_final.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.holy_moly_final.holy_moly_final.dao.SharedDao;
import com.holy_moly_final.holy_moly_final.utils.CommonUtils;
import com.holy_moly_final.holy_moly_final.utils.Paginations;

@Service
public class AdminService {
    @Autowired
    SharedDao sharedDao;

    public Object insertUserInfoAndgetListForAdmin(Object dataMap) {
        HashMap<String, Object> result = new HashMap<String, Object>();
        result.put("insertUserInfo", this.insertUserInfo(dataMap));
        result.put("userList", this.getListForUser(dataMap));
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
        result.put("userList", this.getListForUser(dataMap));
        result.put("totalCount", this.getCountUsers(dataMap));
        return result;
    }

    public Object updateUserInfo(Object dataMap) {
        String sqlMapId = "Admin.updateUserDataForAdmin";
        Object result = sharedDao.update(sqlMapId, dataMap);
        return result;
    }

    public Object deleteUserInfoAndgetListForAdmin(Object dataMap) {
        HashMap<String, Object> result = new HashMap<String, Object>();
        result.put("deleteUserInfo", this.deleteUserInfo(dataMap));
        result.put("userList", this.getListForUser(dataMap));
        result.put("totalCount", this.getCountUsers(dataMap));
        return result;
    }

    public Object deleteUserInfo(Object dataMap) {
        String sqlMapId = "Admin.deleteUserDataForAdmin";
        Object result = sharedDao.delete(sqlMapId, dataMap);
        return result;
    }

    public Object getUserInfo(Object dataMap) {
        String sqlMapId = "Admin.selectUserInfo";
        Object result = sharedDao.getOne(sqlMapId, dataMap);
        return result;
    }

    public Object getListAndPaginationsForUser(Object dataMap) {
        HashMap<String, Object> result = new HashMap<String, Object>();
        result.put("userList", this.getListForUser(dataMap));
        result.put("paginations", this.paginationsForUser(dataMap));
        result.put("totalCount", this.getCountUsers(dataMap));
        return result;
    }

    public Object getListForUser(Object dataMap) {
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

    // Board
    public Object getListAndPaginationsForBoard(Object dataMap) {
        HashMap<String, Object> result = new HashMap<String, Object>();
        result.put("boardList", this.getListForBoard(dataMap));
        result.put("paginations", this.paginationsForBoard(dataMap));
        result.put("totalCount", this.getCountBoard(dataMap));
        return result;
    }

    public Object getListForBoard(Object dataMap) {
        String sqlMapId = "Admin.selectBoardList";
        Object result = sharedDao.getList(sqlMapId, dataMap);
        return result;
    }

    public Object paginationsForBoard(Object dataMap) {
        String sqlMapId = "Admin.selectBoardPaginations";
        Object result = sharedDao.getList(sqlMapId, dataMap);
        return result;
    }

    public Object getCountBoard(Object dataMap) {
        String sqlMapId = "Admin.selectBoardCount";
        Object result = sharedDao.getOne(sqlMapId, dataMap);
        return result;
    }

    public Object insertBoardAndgetListForAdmin(Object dataMap) {
        HashMap<String, Object> result = new HashMap<String, Object>();
        result.put("insertBoard", this.insertBoard(dataMap));
        result.put("boardList", this.getListForBoard(dataMap));
        result.put("paginations", this.paginationsForBoard(dataMap));
        result.put("totalCount", this.getCountBoard(dataMap));
        return result;
    }

    public Object insertBoard(Object dataMap) {
        String sqlMapId = "Admin.insertBoardForAdmin";
        Object result = sharedDao.insert(sqlMapId, dataMap);
        return result;
    }

    // Inquiry
    public Object getInquiryListWithPagination(Object dataMap) {
        Map<String, Object> result = new HashMap<String, Object>();
        int InquirysCount = (int) this.getInquirysCount(dataMap);
        int currentPage = (int) ((HashMap<String, Object>) dataMap).get("currentPage");
        Paginations paginations = new Paginations(InquirysCount, currentPage);
        result.put("paginations", paginations);
        ((HashMap<String, Object>) dataMap).put("pageBegin", paginations.getPageBegin());
        result.put("resultList", this.getInqurysList(dataMap));
        return result;
    }

    public Object getInquirysCount(Object dataMap) {
        String sqlMapId = "Admin.selectInquirysCount";
        Object result = sharedDao.getOne(sqlMapId, dataMap);
        return result;
    }

    public Object getInqurysList(Object dataMap) {
        String sqlMapId = "Admin.selectInquirysListByUID";
        Object result = sharedDao.getList(sqlMapId, dataMap);
        return result;
    }

    public Object updateInquiryAnswers(Object dataMap) {
        String sqlMapId = "Admin.updateInquiryAnswer";
        Object result = sharedDao.update(sqlMapId, dataMap);
        return result;
    }

    public Object getBoard(Object dataMap) {
        String sqlMapId = "Admin.selectBoardByUid";
        Object result = sharedDao.getOne(sqlMapId, dataMap);
        return result;
    }

    public Object updateBoards(Object dataMap) {
        String sqlMapId = "Admin.updateBoards";
        Object result = sharedDao.update(sqlMapId, dataMap);
        return result;
    }
}
