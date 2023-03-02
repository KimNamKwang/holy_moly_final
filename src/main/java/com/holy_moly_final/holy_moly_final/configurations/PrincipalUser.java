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
    private String grade_Uid;
    private String grade_Desc;
    private String user_Uid;
    private String user_Inquirys_Count;

    public PrincipalUser(Map userInfo) {
        this.userInfo = userInfo;
        this.memberName = (String) userInfo.get("NAME");
        String Point = (String) userInfo.get("totalPoint");
        String grade_Uid = (String) userInfo.get("GRADE_UID");
        String user_Uid = (String) userInfo.get("USER_UID");
        String grade_Desc = (String) userInfo.get("GRADE");
        String Inquirys_Count = (String) userInfo.get("user_inquiry_count");
        if (Point != null) {
            this.totalPoint = Point;
        } else {
            this.totalPoint = "0";
        }

        this.grade_Uid = grade_Uid;
        this.user_Uid = user_Uid;
        this.grade_Desc = grade_Desc;
        this.user_Inquirys_Count = Inquirys_Count;
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

    public String getGrade_Uid() {
        return grade_Uid;
    }

    public void setGrade_Uid(String grade_Uid) {
        this.grade_Uid = grade_Uid;
    }

    public String getUser_Uid() {
        return user_Uid;
    }

    public void setUser_Uid(String user_Uid) {
        this.user_Uid = user_Uid;
    }

    public String getGrade_Desc() {
        return grade_Desc;
    }

    public void setGrade_Desc(String grade_Desc) {
        this.grade_Desc = grade_Desc;
    }

    public String getUser_Inquirys_Count() {
        return user_Inquirys_Count;
    }

    public void setUser_Inquirys_Count(String user_Inquirys_Count) {
        this.user_Inquirys_Count = user_Inquirys_Count;
    }

}
