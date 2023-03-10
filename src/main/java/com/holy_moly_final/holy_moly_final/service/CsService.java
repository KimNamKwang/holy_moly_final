package com.holy_moly_final.holy_moly_final.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.holy_moly_final.holy_moly_final.dao.SharedDao;
import com.holy_moly_final.holy_moly_final.utils.Paginations;

@Service
public class CsService {
    @Autowired
    SharedDao sharedDao;

    public Object getOneWithAppendViews(Object dataMap) {
        Object result = this.updateView(dataMap);
        result = this.getOne(dataMap);

        return result;
    }

    public Object getListWithPagination(Object dataMap) {
        Map<String, Object> result = new HashMap<String, Object>();
        int totalCount = (int) this.getTotal(dataMap);
        int currentPage = (int) ((Map<String, Object>) dataMap).get("currentPage");
        Paginations paginations = new Paginations(totalCount, currentPage);
        result.put("paginations", paginations);
        ((Map<String, Object>) dataMap).put("pageBegin", paginations.getPageBegin());
        ((Map<String, Object>) dataMap).put("pageCale", paginations.getPageScale());
        result.put("resultList", this.getList(dataMap));

        return result;
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

    public Object updateView(Object dataMap) {
        String sqlMapId = "Cs.updateViewsByCommonBoard_UID";
        Object result = sharedDao.update(sqlMapId, dataMap);
        return result;
    }

    public Object getOne(Object dataMap) {
        String sqlMapId = "Cs.selectNoticeViewByCommonBoard_UID";
        Object result = sharedDao.getOne(sqlMapId, dataMap);

        return result;
    }

}
