package com.holy_moly_final.holy_moly_final.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.holy_moly_final.holy_moly_final.dao.AttachFilesDao;

@Service
public class AttachFilesService {
    @Autowired
    AttachFilesDao attachFilesDao;

    public Object getList(Object dataMap) {
        String sqlMapId = "AttachFile.selectListByUID";
        Object result = attachFilesDao.getList(sqlMapId, dataMap);
        return result;
    }
}
