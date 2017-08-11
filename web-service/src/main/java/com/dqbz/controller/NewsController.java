package com.dqbz.controller;

import com.dqbz.model.Member;
import com.dqbz.model.MemberWithBLOBs;
import com.dqbz.model.News;
import com.dqbz.service.MemberService;
import com.dqbz.service.NewsService;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;


import javax.servlet.http.HttpServletRequest;

import static org.springframework.web.bind.annotation.RequestMethod.POST;

/**
 * 会员单位
 * Created by lynn on 2017/7/9.
 */
@Controller
@RequestMapping("/")

public class NewsController {


    @Autowired
    private NewsService newsService;

    @Autowired
    private MemberService memberService;

    @RequestMapping(value = "/newsList")
    public ModelAndView getNewsList(){

        List<News> news = newsService.getNewsByType("1");
        return new ModelAndView("newsList","newsList",news);
    }

    @RequestMapping(value = "/informationList")
    public ModelAndView getInformationList(){

        List<News> news = newsService.getNewsByType("3");
        return new ModelAndView("informationList","newsList",news);
    }

    @RequestMapping(value = "/addNewsPage")
    public ModelAndView addNewsPage(){
        List<Member> memberList = memberService.selectAllMember();
        return new ModelAndView("addNews","memberList",memberList);
    }

    @RequestMapping(value = "/addInformation")
    public ModelAndView addInformation(){
        List<Member> memberList = memberService.selectAllMember();
        return new ModelAndView("addInformation","memberList",memberList);
    }

    @RequestMapping(value = "/updateNewsPage")
    public ModelAndView updateNewsPage(){

        List<Member> memberList = memberService.selectAllMember();
        return new ModelAndView("updateNews","memberList",memberList);
    }

    @RequestMapping(value = "/addNews", method = POST)
    public @ResponseBody String newsList(@RequestBody String data){

        JSONObject requestData = new JSONObject(data);

        News news = new News();
        news.setTitle(requestData.getString("title"));
        news.setType(requestData.getString("type"));
        news.setMemberid(Integer.parseInt(requestData.getString("memberid")));
        news.setContent(requestData.getString("content"));

        newsService.addNews(news);

        JSONObject jsonObject = new JSONObject();

        jsonObject.put("key", "OK");

        return jsonObject.toString();
    }


    @RequestMapping(value = "/getNewsByID")
    public @ResponseBody ModelAndView getNewsByID(HttpServletRequest request){

        String newsID = request.getParameter("newsID");
        List<Member> memberList = memberService.selectAllMember();
        News news = newsService.getNewsByID(Integer.parseInt(newsID));
        Member member = memberService.getMember(news.getMemberid());
        Map map = new HashMap();
        map.put("memberList",memberList);
        map.put("news",news);
        map.put("member",member);
        return new ModelAndView("updateNews","map",map);
    }

    @RequestMapping(value = "/getInformationByID")
    public @ResponseBody ModelAndView getInformationByID(HttpServletRequest request){

        String newsID = request.getParameter("newsID");
        List<Member> memberList = memberService.selectAllMember();
        News news = newsService.getNewsByID(Integer.parseInt(newsID));
        Member member = memberService.getMember(news.getMemberid());
        Map map = new HashMap();
        map.put("memberList",memberList);
        map.put("news",news);
        map.put("member",member);
        return new ModelAndView("updateInformation","map",map);
    }

    @RequestMapping(value = "/deleteNewsByID", method = POST)
    public @ResponseBody String deleteNewsByID(@RequestBody String data){

        JSONObject requestData = new JSONObject(data);

        int newsID = Integer.parseInt(requestData.getString("newsID"));

        newsService.deleteNewsByID(newsID);

        JSONObject jsonObject = new JSONObject();

        jsonObject.put("key", "OK");

        return jsonObject.toString();
    }

    @RequestMapping(value = "/updateNews", method = POST)
    public @ResponseBody String updateNews(@RequestBody String data) {

        JSONObject requestData = new JSONObject(data);

        int id = Integer.parseInt(requestData.getString("NewsID"));

        News news = newsService.selectNewByID(id);
        news.setTitle(requestData.getString("title"));
        news.setMemberid(Integer.parseInt(requestData.getString("memberid")));
        news.setContent(requestData.getString("content"));
        news.setUpdateTime(new Date());

        newsService.updateNews(news);

        JSONObject jsonObject = new JSONObject();

        jsonObject.put("key", "OK");

        return jsonObject.toString();
    }
}
