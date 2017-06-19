package com.dqbz.controller;

import com.dqbz.service.demo.DemoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
	public String demo(){
		return "hello";
	}

	@RequestMapping(value = "/getName")
	public String getName(){

		String ame = demoService.getName("1");
		System.out.println(ame);
		return "index";
	}

}
