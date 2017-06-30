package com.dqbz.controller;

import com.dqbz.service.DemoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

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

    @RequestMapping(value = "/sql")
    @ResponseBody
    public String getName() {
        return demoService.getName(1).toString();
//        return "index";
    }

    @RequestMapping(value = "/index")
    public String index(){
        return "index";
    }
}
