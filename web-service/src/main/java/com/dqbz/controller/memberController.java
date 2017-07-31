package com.dqbz.controller;

import com.dqbz.model.MemberWithBLOBs;
import com.dqbz.service.MemberService;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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

    @RequestMapping(value = "/addMember", method = POST)
    public @ResponseBody String addMember(@RequestBody String data){

        System.out.println("OK");

        JSONObject requestData = new JSONObject(data);

        MemberWithBLOBs member = new MemberWithBLOBs();
        member.setName(requestData.getString("memberName"));
        member.setCover(requestData.getString("cover"));
        memberService.insertMember(member);

        JSONObject jsonObject = new JSONObject();

        jsonObject.put("key", "OK");

        return jsonObject.toString();
    }
}
