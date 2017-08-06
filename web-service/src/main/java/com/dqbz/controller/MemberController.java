package com.dqbz.controller;

import com.dqbz.model.Member;
import com.dqbz.model.MemberWithBLOBs;
import com.dqbz.model.News;
import com.dqbz.service.MemberService;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;
import java.util.List;

import static org.springframework.web.bind.annotation.RequestMethod.POST;


/**
 * 会员单位
 * Created by lynn on 2017/7/9.
 */
@Controller
@RequestMapping("/")

public class MemberController {


    @Autowired
    private MemberService memberService;

    @RequestMapping(value = "/memberList")
    public ModelAndView getNewsList(){

        List<Member> memberList = memberService.selectAllMember();
        return new ModelAndView("memberList","memberList",memberList);
    }

    @RequestMapping(value = "/addMemberPage")
    public String addMemberPage(){

        return "addMember";
    }

    @RequestMapping(value = "/addMember", method = POST)
    public @ResponseBody String newsList(@RequestBody String data){

        JSONObject requestData = new JSONObject(data);

        MemberWithBLOBs member = new MemberWithBLOBs();

        member.setName(requestData.getString("memberName"));
        System.out.println(requestData.getString("cover"));
        member.setCover(requestData.getString("cover"));
        member.setIntroduction(requestData.getString("memberIntro"));
        member.setContent(requestData.getString("content"));
        member.setIntroduction(requestData.getString("memberIntro"));
        member.setContact(requestData.getString("contact"));

        memberService.insertMember(member);

        JSONObject jsonObject = new JSONObject();

        jsonObject.put("key", "OK");

        return jsonObject.toString();
    }

    @RequestMapping(value = "/deleteMemberByID", method = POST)
    public @ResponseBody String deleteMemberByID(@RequestBody String data){

        JSONObject requestData = new JSONObject(data);

        int memberID = requestData.getInt("memberID");

        memberService.deleteMemberByID(memberID);

        JSONObject jsonObject = new JSONObject();

        jsonObject.put("key", "OK");

        return jsonObject.toString();
    }

    @RequestMapping(value = "/getMemberByID")
    public ModelAndView getMemberByID(HttpServletRequest request){

        int memberID = Integer.parseInt(request.getParameter("memberID"));

        MemberWithBLOBs member = memberService.getMember(memberID);
        return new ModelAndView("updateMember","member",member);
    }

    @RequestMapping(value = "/updateMember", method = POST)
    public @ResponseBody String updateMember(@RequestBody String data){

        JSONObject requestData = new JSONObject(data);

        int memberid = requestData.getInt("memberID");

        MemberWithBLOBs member = memberService.getMember(memberid);
        member.setName(requestData.getString("memberName"));
        member.setCover(requestData.getString("cover"));
        member.setIntroduction(requestData.getString("memberIntro"));
        member.setContent(requestData.getString("content"));
        member.setIntroduction(requestData.getString("memberIntro"));
        member.setContact(requestData.getString("contact"));
        member.setUpdateTime(new Date());
        memberService.updateMember(member);

        JSONObject jsonObject = new JSONObject();

        jsonObject.put("key", "OK");

        return jsonObject.toString();
    }
}
