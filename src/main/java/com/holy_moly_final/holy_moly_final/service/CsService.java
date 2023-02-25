package com.holy_moly_final.holy_moly_final.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.holy_moly_final.holy_moly_final.dao.SharedDao;

@Service
public class CsService {
    @Autowired
    SharedDao sharedDao;

    public Object getListWithPagination(Object dataMap) {
        Map<String, Object> result = new HashMap<String, Object>();
        int totalCount = (int) this.getTotal(dataMap);
        int currentPage = (int) ((Map<String, Object>) dataMap).get("currentPage");
        Paginations
        return Object;
    }

    public Object getTotal(Object dataMap) {
        String sqlMapId = "Cs.selectTotal";
        Object result = sharedDao.getOne(sqlMapId, dataMap);
        return result;
    }

    public Object getList(Object dataMap) {
        String sqlMapId = "Cs.selectNoticeListByBoardType";
        Object result = sharedDao.getList(sqlMapId, dataMap);
        return result;
    }
}
