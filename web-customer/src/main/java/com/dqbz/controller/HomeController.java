package com.dqbz.controller;

import com.dqbz.model.Activity;
import com.dqbz.service.DemoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 主页
 * Created by lynn on 2017/7/9.
 */
@Controller
@RequestMapping("/")
public class HomeController {

    @Autowired
    private DemoService demoService;

    @RequestMapping(value = "/")
    public ModelAndView index(){

        Activity activity = demoService.getAllActivity();
        System.out.println(activity);
        Map map = new HashMap();
        map.put("aa","kkk");
        return new ModelAndView("index","a",map);
    }

    @RequestMapping(value = "/members")
    public String events(){
        return "members";
    }

    @RequestMapping(value = "/association")
    public String association(){
        return "association";
    }

    @RequestMapping(value = "/memberDetail")
    public String memberDetail(){
        return "memberDetail";
    }

    @RequestMapping(value = "/news")
    public String news(){
        return "news";
    }

    @RequestMapping(value = "/greenStyle")
    public String greenStyle(){
        return "greenStyle";
    }

    @RequestMapping(value = "/traditionStyle")
    public String traditionStyle(){
        return "traditionStyle";
    }

    @RequestMapping(value = "/professionStyle")
    public String professionStyle(){
        return "professionStyle";
    }

    @RequestMapping(value = "/activity")
    public String activity(){
        return "activity";
    }

    @RequestMapping(value = "/serviceCenter")
    public String serviceCenter(){
        return "serviceCenter";
    }
}
