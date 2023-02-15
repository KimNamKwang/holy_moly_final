package com.holy_moly_final.holy_moly_final.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ByPassController {

    @RequestMapping(value = { "/**" })
    public void byPass() {
        // 이미지 뷰가 안되서 확인해본 결과 /**를 타면 무조건 jsp로 타져서 오류가 발생한다.
        // /** 가 아닌 정상적인 링크 설정 시 이미지가 로드됨
    }
}
