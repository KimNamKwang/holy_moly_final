package com.holy_moly_final.holy_moly_final.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.holy_moly_final.holy_moly_final.configurations.PrincipalUser;
import com.holy_moly_final.holy_moly_final.dao.SharedDao;

@Service
public class PrincipalUserService implements UserDetailsService {
    @Autowired
    SharedDao sharedDao;

    @Override
    /* uri가 login일때 spring security가 호출 */
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        /* query문으로 select 함 */
        String sqlMapId = "Memberwithauthority.selectUserInfoByUIDForLogin";
        Object usernameObj = username;
        /* Spring에서는 DB에 갔다오는 부분에서 로그인에 username만 요구하고 password는 요구하지 않는다 */
        Map<String, String> resultMap = (Map<String, String>) sharedDao.getOne(sqlMapId, usernameObj);
        Object resultPoint = this.loadUserPointByUsername(usernameObj);
        String totalPoint = null;
        if (resultPoint != null) {
            totalPoint = ((Map<String, Object>) resultPoint).get("totalPoint").toString();
        }
        resultMap.put("totalPoint", totalPoint);
        // 포인트 넣기

        /* session에 등록 */
        PrincipalUser principalUser = new PrincipalUser(resultMap);
        /*
         * 진행과정
         * 생성자가 만들어지고 resultMap을 받는다. PrincipalUser의 메소드들이 생기고
         * 담을 수 있는 상태가 된다. 아래에서 return하게 되면 authentication을 건드린다.
         * authentication이 PrincipalUser의 getPasseord()를 가져와서 password를 체크한다
         */
        return principalUser;
    }

    public Object loadUserPointByUsername(Object usernameObj) {
        String sqlMapId = "Memberwithauthority.selectUserPointByUID";
        Object dataMap = usernameObj;
        Map<String, String> resultMap = (Map<String, String>) sharedDao.getOne(sqlMapId, dataMap);

        return resultMap;
    }

}
