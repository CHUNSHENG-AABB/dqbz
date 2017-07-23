package com.dqbz.controller;

import org.springframework.beans.factory.annotation.Autowired;
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

public class ServiceController {

    @RequestMapping(value = "/")
    public String index(){
        return "index";
    }

    @RequestMapping(value = "/association")
    public String association(){
        return "association";
    }

    @RequestMapping(value = "/ueditor")
    public String ueditor(){
        return "ueditor";
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
