package com.dqbz.controller;

import com.dqbz.model.Activity;
import com.dqbz.model.Member;
import com.dqbz.model.News;
import com.dqbz.service.ActivityService;
import com.dqbz.service.MemberService;
import com.dqbz.service.NewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by lynn on 2017/8/5.
 */
@Controller
@RequestMapping(value = "/")
public class IndexController {

	@Autowired
	private ActivityService activityService;

	@Autowired
	private NewsService newsService;

	@Autowired
	private MemberService memberService;

	@RequestMapping(value = "/")
	public ModelAndView index() {

		List<Activity> activities_doing = activityService.getDoingActivity(new Date());
		List<Activity> activities_ended = activityService.getEndedActivity(new Date());
		while (activities_doing.size()>4){
			activities_doing.remove(activities_doing.size()-1);
		}
		while (activities_ended.size()>4){
			activities_ended.remove(activities_ended.size()-1);
		}

		List<News> news = newsService.getNewsSixRecord();

		List<Member> members = memberService.getAllMembers();

		Map map = new HashMap();
		map.put("activities_doing", activities_doing);
		map.put("activities_ended", activities_ended);
		map.put("news",news);
		map.put("members",members);
		return new ModelAndView("index", "entity", map);
	}

}
