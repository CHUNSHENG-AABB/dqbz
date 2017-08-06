package com.dqbz.controller;

import com.dqbz.model.Member;
import com.dqbz.model.News;
import com.dqbz.service.MemberService;
import com.dqbz.service.NewsService;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
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

public class MessageController {


    @Autowired
    private NewsService newsService;

    @Autowired
    private MemberService memberService;

    @RequestMapping(value = "/messageList")
    public ModelAndView getMessageList(){

        List<News> Message = newsService.getNewsByType("2");
        return new ModelAndView("messageList","messageList",Message);
    }

    @RequestMapping(value = "/addMessagePage")
    public ModelAndView addNewsPage(){

        List<Member> memberList = memberService.selectAllMember();
        return new ModelAndView("addMessage","memberList",memberList);
    }

    @RequestMapping(value = "/updateMessagePage")
    public String updateMessagePage(){

        return "updateMessage";
    }

    @RequestMapping(value = "/addMessage", method = POST)
    public @ResponseBody String addMessage(@RequestBody String data){

        JSONObject requestData = new JSONObject(data);

        News news = new News();
        news.setTitle(requestData.getString("title"));
        news.setType("2");
        news.setMemberid(Integer.parseInt(requestData.getString("memberid")));
        news.setContent(requestData.getString("content"));

        newsService.addNews(news);

        JSONObject jsonObject = new JSONObject();

        jsonObject.put("key", "OK");

        return jsonObject.toString();
    }

    @RequestMapping(value = "/getMessageByID")
    public @ResponseBody ModelAndView getNewsByID(HttpServletRequest request){

        String messageID = request.getParameter("MessageID");
        News message = newsService.getNewsByID(Integer.parseInt(messageID));
        List<Member> memberList = memberService.selectAllMember();
        Member member = memberService.getMember(message.getMemberid());

        Map map = new HashMap();
        map.put("memberList",memberList);
        map.put("member",member);
        map.put("message",message);
        return new ModelAndView("updateMessage","map",map);
    }
}
