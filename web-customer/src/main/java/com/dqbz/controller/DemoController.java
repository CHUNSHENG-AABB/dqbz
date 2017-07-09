package com.dqbz.controller;

import com.dqbz.service.DemoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.Map;

/**
 * @author Gao Zhengyuan
 * @create 2017-06-12-16:53
 */
@Controller
@RequestMapping("/demo")
public class DemoController {

    @Autowired
    private DemoService demoService;


    @RequestMapping(value = "/hello", method = RequestMethod.GET)
    public String demo() {
        return "hello";
    }

    @RequestMapping(value = "/getName")
    public String getName() {

        return "/view/index.ftl";
    }

    @RequestMapping(value = "/index")
    public ModelAndView index(){

        Map map = new HashMap();
        map.put("aa","kkk");
        return new ModelAndView("index","a",map);
    }

    @RequestMapping(value = "/header")
    public String header(){
        return "header";
    }

    @RequestMapping(value = "/events")
    public String events(){
        return "events";
    }
}
