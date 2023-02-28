package com.holy_moly_final.holy_moly_final.controller;

import java.util.Map;

import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class IndexController {
    @RequestMapping(value = { "/", "", "/index" }, method = RequestMethod.GET)
    public ModelAndView guideHome(@RequestParam Map<String, Object> params,
            ModelAndView modelAndView) {
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        String username = null;

        if (principal instanceof UserDetails) {
            username = ((UserDetails) principal).getUsername(); /* 로그인 상태 확인 */
        } else {
            username = principal.toString(); /* 로그아웃 상태 확인 */
        }
        modelAndView.setViewName("index");
        return modelAndView;
    }
}
