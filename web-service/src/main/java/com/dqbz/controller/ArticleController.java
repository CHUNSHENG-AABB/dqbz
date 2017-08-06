package com.dqbz.controller;

import com.dqbz.model.Article;
import com.dqbz.service.MemberService;
import com.dqbz.service.ArticleService;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import static org.springframework.web.bind.annotation.RequestMethod.POST;

/**
 * 会员单位
 * Created by lynn on 2017/7/9.
 */
@Controller
@RequestMapping("/")

public class ArticleController {


    @Autowired
    private ArticleService ArticleService;

    @RequestMapping(value = "/ArticleList")
    public ModelAndView getArticleList(@RequestParam("type") String type){

        List<Article> article = ArticleService.getArticleByType(type);
        Map map = new HashMap();
        map.put("ArticleList",article);
        map.put("type",type);
        return new ModelAndView("articleList","entity",map);
    }

    @RequestMapping(value = "/addArticlePage")
    public ModelAndView addArticlePage(@RequestParam("type") String type){

        return new ModelAndView("addArticle","type",type);
    }

    @RequestMapping(value = "/updateArticlePage")
    public String updateArticlePage(){

        return "updateArticle";
    }

    @RequestMapping(value = "/addArticle", method = POST)
    public @ResponseBody String ArticleList(@RequestBody String data){

        JSONObject requestData = new JSONObject(data);

        Article Article = new Article();
        Article.setTitle(requestData.getString("title"));
        Article.setIntroduction(requestData.getString("content"));
        Article.setType(requestData.getString("type"));

        ArticleService.addArticle(Article);

        JSONObject jsonObject = new JSONObject();

        jsonObject.put("key", "OK");

        return jsonObject.toString();
    }


    @RequestMapping(value = "/getArticleByID")
    public @ResponseBody ModelAndView getArticleByID(HttpServletRequest request){

        String ArticleID = request.getParameter("ArticleID");

        return new ModelAndView("updateArticle","Article",ArticleService.getArticleByID(Integer.parseInt(ArticleID)));
    }

    @RequestMapping(value = "/deleteArticleByID", method = POST)
    public @ResponseBody String deleteArticleByID(@RequestBody String data){

        JSONObject requestData = new JSONObject(data);

        int ArticleID = Integer.parseInt(requestData.getString("ArticleID"));

        ArticleService.deleteArticleByID(ArticleID);

        JSONObject jsonObject = new JSONObject();

        jsonObject.put("key", "OK");

        return jsonObject.toString();
    }

    @RequestMapping(value = "/updateArticle", method = POST)
    public @ResponseBody String updateArticle(@RequestBody String data) {

        JSONObject requestData = new JSONObject(data);

        int id = Integer.parseInt(requestData.getString("ArticleID"));

        Article Article = ArticleService.selectArticleByID(id);
        Article.setTitle(requestData.getString("title"));
        Article.setIntroduction(requestData.getString("content"));
        Article.setType(requestData.getString("type"));
        Article.setUpdateTime(new Date());

        ArticleService.updateArticle(Article);

        JSONObject jsonObject = new JSONObject();

        jsonObject.put("key", "OK");

        return jsonObject.toString();
    }
}
