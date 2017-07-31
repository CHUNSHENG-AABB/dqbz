package com.dqbz.controller;

import com.dqbz.model.News;
import com.dqbz.service.NewsService;
import java.util.List;

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

    @RequestMapping(value = "/newsList")
    public ModelAndView getNewsList(){

        List<News> news = newsService.getAllNews();
        return new ModelAndView("newsList","newsList",news);
    }

    @RequestMapping(value = "/addNewsPage")
    public String addNewsPage(){

        return "addNews";
    }

    @RequestMapping(value = "/updateNewsPage")
    public String updateNewsPage(){

        return "updateNews";
    }

    @RequestMapping(value = "/addNews", method = POST)
    public @ResponseBody String newsList(@RequestBody String data){

        JSONObject requestData = new JSONObject(data);

        News news = new News();
        news.setTitle(requestData.getString("title"));
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

        return new ModelAndView("updateNews","news",newsService.getNewsByID(Integer.parseInt(newsID)));
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

        newsService.updateNews(news);

        JSONObject jsonObject = new JSONObject();

        jsonObject.put("key", "OK");

        return jsonObject.toString();
    }
}
