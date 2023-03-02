package com.holy_moly_final.holy_moly_final.configurations;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Map;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

public class PrincipalUser implements UserDetails {

    private Map userInfo;
    private String memberName;
    private String totalPoint;
    private String userGrade;
    private String user_Uid;

    public PrincipalUser(Map userInfo) {
        this.userInfo = userInfo;
        this.memberName = (String) userInfo.get("NAME");
        String Point = (String) userInfo.get("totalPoint");
        String userGrade = (String) userInfo.get("GRADE_UID");
        String user_Uid = (String) userInfo.get("USER_UID");
        if (Point != null) {
            this.totalPoint = Point;
        } else {
            this.totalPoint = "0";
        }

        this.userGrade = userGrade;
        this.user_Uid = user_Uid;
        int i = 1;

    }

    @Override
    public Collection<GrantedAuthority> getAuthorities() {
        // 권한들
        Collection<GrantedAuthority> collections = new ArrayList<>();
        collections.add(new SimpleGrantedAuthority((String) userInfo.get("AUTH")));
        return collections;
    }

    @Override
    public String getPassword() {
        /* password */
        return (String) userInfo.get("PASSWORD");
    }

    @Override
    public String getUsername() {
        /* ID */
        return (String) userInfo.get("USER_UID");
    }

    @Override
    public boolean isAccountNonExpired() {
        /* 계정 만료 여부 */
        return true;
    }

    @Override
    public boolean isAccountNonLocked() {
        /* 계정 잠금 여부 */
        return true;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        /* 비밀번호 변경 기간 만료 */
        return true;
    }

    @Override
    public boolean isEnabled() {
        /* 휴면 계정 여부 */
        return true;
    }

    public String getMemberName() {
        return memberName;
    }

    public void setMemberName(String memberName) {
        this.memberName = memberName;
    }

    public String getTotalPoint() {
        return totalPoint;
    }

    public void setTotalPoint(String totalPoint) {
        this.totalPoint = totalPoint;
    }

    public String getUserGrade() {
        return userGrade;
    }

    public void setUserGrade(String userGrade) {
        this.userGrade = userGrade;
    }

    public String getUser_Uid() {
        return user_Uid;
    }

    public void setUser_Uid(String user_Uid) {
        this.user_Uid = user_Uid;
    }

}
