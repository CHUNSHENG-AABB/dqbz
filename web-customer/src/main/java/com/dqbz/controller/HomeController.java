package com.dqbz.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.Map;

/**
 * 主页
 * Created by lynn on 2017/7/9.
 */
@Controller
@RequestMapping("/")
public class HomeController {

    @RequestMapping(value = "/")
    public ModelAndView index(){

        Map map = new HashMap();
        map.put("aa","kkk");
        return new ModelAndView("index","a",map);
    }

    @RequestMapping(value = "/members")
    public String events(){
        return "members";
    }

}
