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
        result.put("paginations", this.paginationsForUser(dataMap));
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
        result.put("deleteUserInfo", this.deleteUserInfoStep1(dataMap));
        result.put("deleteUserInfo", this.deleteUserInfoStep2(dataMap));
        result.put("deleteUserInfo", this.deleteUserInfoStep3(dataMap));
        result.put("deleteUserInfo", this.deleteUserInfoStep4(dataMap));
        result.put("deleteUserInfo", this.deleteUserInfoStep5(dataMap));
        result.put("userList", this.getListForUser(dataMap));
        result.put("totalCount", this.getCountUsers(dataMap));
        return result;
    }

    public Object deleteUserInfoStep1(Object dataMap) {
        String sqlMapId = "Admin.deleteUserDataForAdminStep1";
        Object result = sharedDao.delete(sqlMapId, dataMap);
        return result;
    }

    public Object deleteUserInfoStep2(Object dataMap) {
        String sqlMapId = "Admin.deleteUserDataForAdminStep2";
        Object result = sharedDao.delete(sqlMapId, dataMap);
        return result;
    }

    public Object deleteUserInfoStep3(Object dataMap) {
        String sqlMapId = "Admin.deleteUserDataForAdminStep3";
        Object result = sharedDao.delete(sqlMapId, dataMap);
        return result;
    }

    public Object deleteUserInfoStep4(Object dataMap) {
        String sqlMapId = "Admin.deleteUserDataForAdminStep4";
        Object result = sharedDao.delete(sqlMapId, dataMap);
        return result;
    }

    public Object deleteUserInfoStep5(Object dataMap) {
        String sqlMapId = "Admin.deleteUserDataForAdminStep5";
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

        int totalCount = (int) this.getCountUsers(dataMap);
        int currentPage = (int) ((HashMap<String, Object>) dataMap).get("currentPage");
        Paginations paginations = new Paginations(totalCount, currentPage);
        result.put("paginations", paginations);
        ((HashMap<String, Object>) dataMap).put("pageBegin", paginations.getPageBegin());
        result.put("userList", this.getListForUser(dataMap));

        // result.put("userList", this.getListForUser(dataMap));
        // result.put("paginations", this.paginationsForUser(dataMap));
        return result;
    }

    public Object getListAndPaginationsForShipment(Object dataMap) {
        HashMap<String, Object> result = new HashMap<String, Object>();

        int shipmentCount = (int) this.getCountShipments(dataMap);
        int currentPage = (int) ((HashMap<String, Object>) dataMap).get("currentPage");
        Paginations paginations = new Paginations(shipmentCount, currentPage);
        result.put("paginations", paginations);
        ((HashMap<String, Object>) dataMap).put("pageBegin", paginations.getPageBegin());
        result.put("shipmentsList", this.getListForShipment(dataMap));

        // result.put("shipmentsList", this.getListForShipment(dataMap));
        // result.put("paginations", this.paginationsForShipment(dataMap));
        // result.put("shipmentCount", this.getCountShipments(dataMap));
        return result;
    }

    public Object getShipmentInfo(Object dataMap) {
        String sqlMapId = "Admin.selectShipmentInfo";
        Object result = sharedDao.getOne(sqlMapId, dataMap);
        return result;
    }

    public Object updateShipmentprogAndGetListForShipment(Object dataMap) {
        HashMap<String, Object> result = new HashMap<String, Object>();
        this.updateShipmentProgress(dataMap);
        result.put("shipmentsList", this.getListForShipment(dataMap));
        result.put("paginations", this.paginationsForShipment(dataMap));
        result.put("shipmentCount", this.getCountShipments(dataMap));
        return result;
    }

    public Object updateShipmentProgress(Object dataMap) {
        String sqlMapId = "Admin.insertShipmentProgress";
        Object result = sharedDao.insert(sqlMapId, dataMap);
        return result;
    }

    public Object getListForUser(Object dataMap) {
        String sqlMapId = "Admin.selectUserList";
        Object result = sharedDao.getList(sqlMapId, dataMap);
        return result;
    }

    public Object getListForShipment(Object dataMap) {
        String sqlMapId = "Admin.selectShipmentsList";
        Object result = sharedDao.getList(sqlMapId, dataMap);
        return result;
    }

    public Object paginationsForShipment(Object dataMap) {
        String sqlMapId = "Admin.selectShipmentsPaginations";
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

    public Object getCountShipments(Object dataMap) {
        String sqlMapId = "Admin.selectShipmentsCount";
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
        String BOARD_UID = (String) ((HashMap<String, Object>) dataMap).get("BOARD_UID");
        result.put("insertBoard", this.insertBoard(dataMap));
        // 조건에 따라 들어가야하는 DB가 다르다.(board_uid에 따라 구분)
        if (BOARD_UID.equals("BOARD_EVENT")) {
            // 게시판 타입이 BOARD_EVENT
            result.put("insertEventDateBoard", this.insertEventDateBoard(dataMap));

        } else {
            // 게시판을 선택하지 않으면
        }

        // 아래는 무조건 돌아야한 구문 (Paginations, list를 불러오는 것, totalCount 등)
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

    public Object insertEventDateBoard(Object dataMap) {
        String sqlMapId = "Admin.insertEventDateBoardForAdmin";
        Object result = sharedDao.insert(sqlMapId, dataMap);
        return result;
    }

    public Object insertFaqType(Object dataMap) {
        String sqlMapId = "Admin.insertFaqTypeForAdmin";
        Object result = sharedDao.insert(sqlMapId, dataMap);
        return result;
    }

    public Object deleteBoardAndgetListForAdmin(Object dataMap) {
        HashMap<String, Object> result = new HashMap<String, Object>();
        result.put("deleteBoard", this.deleteBoardStep1(dataMap));
        result.put("deleteBoard", this.deleteBoardStep2(dataMap));
        result.put("deleteBoard", this.deleteBoardStep3(dataMap));
        result.put("boardList", this.getListForBoard(dataMap));
        result.put("paginations", this.paginationsForBoard(dataMap));
        result.put("boardList", this.getListForBoard(dataMap));
        result.put("totalCount", this.getCountBoard(dataMap));
        return result;
    }

    public Object deleteBoardStep1(Object dataMap) {
        String sqlMapId = "Admin.deleteBoardForAdminStep1";
        Object result = sharedDao.delete(sqlMapId, dataMap);
        return result;
    }

    public Object deleteBoardStep2(Object dataMap) {
        String sqlMapId = "Admin.deleteBoardForAdminStep2";
        Object result = sharedDao.delete(sqlMapId, dataMap);
        return result;
    }

    public Object deleteBoardStep3(Object dataMap) {
        String sqlMapId = "Admin.deleteBoardForAdminStep3";
        Object result = sharedDao.delete(sqlMapId, dataMap);
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
