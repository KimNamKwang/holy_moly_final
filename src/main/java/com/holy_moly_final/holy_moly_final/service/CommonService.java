package com.holy_moly_final.holy_moly_final.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.holy_moly_final.holy_moly_final.dao.SharedDao;
import com.holy_moly_final.holy_moly_final.utils.Paginations;

@Service
public class CommonService {
    @Autowired
    SharedDao sharedDao;
    @Autowired
    BCryptPasswordEncoder bcryptPasswordEncoder;

    public Object getOneWithAttachFiles(Object dataMap) {
        // Attach Files ArrayList<Map>
        HashMap<String, Object> result = new HashMap<String, Object>();
        result.put("attachFiles", this.getList(dataMap));

        /*
         * 위에서 넣은 result가 사라지지 않게 하기 위해 putAll사용. putAll은 같은 key가 아니면 자동으로 list에다가 put을
         * 해준다
         */
        // result.putAll((Map<String, Object>) this.getOne(dataMap));
        return result;
    }

    public Object deleteAndGetList(Object dataMap) {
        Object result = this.delete(dataMap);/* 이미 이 클래스 내에서 delete가 있기 때문 */
        result = this.getList(dataMap);
        return result;

    }

    public Object idDuplicateCheck(Object dataMap) {
        String sqlMapId = "Common.selectUsersUIDForDuplicateCheck";
        Object result = sharedDao.getOne(sqlMapId, dataMap);
        return result;
    }

    public Object insertMulti(Object dataMap) {
        String sqlMapId = "AttachFile.insertMulti";
        Object result = sharedDao.insert(sqlMapId, dataMap);
        return result;
    }

    // public Object insertWithFilesAndGetList(Object dataMap) {
    // // insert files
    // Object result = this.insertMulti(dataMap);
    // result = this.insertOne(dataMap);
    // result = this.getList(dataMap);
    // return result;

    // }

    public Object insertUserDataAndGet(Object dataMap) {
        Object result = this.insertUserData(dataMap);
        result = this.getUserData(dataMap);
        return result;

    }

    public Object getUsersDataByIdAndPhone(Object dataMap) {
        String sqlMapId = "Common.selectUsersDataByIdAndPhone";
        Object result = sharedDao.getOne(sqlMapId, dataMap);
        return result;

    }

    public Object updateUsersPassword(Object dataMap) {
        String sqlMapId = "Common.updateUsersPassword";
        Object result = sharedDao.update(sqlMapId, dataMap);
        return result;

    }

    public Object getUserData(Object dataMap) {
        String sqlMapId = "Common.selectUserDataForJoinStep4";
        Object result = sharedDao.getOne(sqlMapId, dataMap);
        return result;
    }

    // public Object insertOneAndGetList(Object dataMap) {
    // Object result = this.insertOne(dataMap);
    // result = this.getList(dataMap);
    // return result;

    // }

    public Object insertUserDataForAdmin(Object dataMap) {
        String sqlMapId = "Common.insertUserDataForAdmin";
        Object result = sharedDao.insert(sqlMapId, dataMap);
        return result;

    }

    public Object updateAndGetList(Object dataMap) {
        Object result = this.update(dataMap);
        result = this.getList(dataMap);
        return result;
    }

    public Object getListWithPagination(Object dataMap) {
        Map<String, Object> result = new HashMap<String, Object>();
        int totalCount = (int) this.getTotal(dataMap);
        int currentPage = (int) ((HashMap<String, Object>) dataMap).get("currentPage");
        Paginations paginations = new Paginations(totalCount, currentPage);
        result.put("paginations", paginations);
        ((HashMap<String, Object>) dataMap).put("pageBegin", paginations.getPageBegin());
        result.put("resultList", this.getList(dataMap));
        return result;
    }

    public Object getTotal(Object dataMap) {
        String sqlMapId = "Common.selectTotal";
        Object result = sharedDao.getOne(sqlMapId, dataMap);
        return result;
    }

    public Object getList(Object dataMap) {
        String sqlMapId = "Common.selectForTrackShipInquiry";
        Object result = sharedDao.getList(sqlMapId, dataMap);
        return result;
    }

    public Object getUserUIDByNameAndPhone(Object dataMap) {
        String sqlMapId = "Common.selectUserUIDByNameAndPhone";
        Object result = sharedDao.getOne(sqlMapId, dataMap);
        return result;
    }

    public Object update(Object dataMap) {
        String sqlMapId = "Common.updateByUID";
        Object result = sharedDao.update(sqlMapId, dataMap);
        return result;
    }

    public Object insertUserData(Object dataMap) {
        String sqlMapId = "Common.insertUserDataForJoin";
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
