package com.dqbz.controller;

import com.dqbz.model.Association;
import com.dqbz.model.Member;
import com.dqbz.service.AssociationService;
import com.dqbz.service.MemberService;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;

import static org.springframework.web.bind.annotation.RequestMethod.POST;

/**
 * 主页
 * Created by lynn on 2017/7/9.
 */
@Controller
@RequestMapping("/")

public class ServiceController {

    @Autowired
    private AssociationService associationService;
    private MemberService memberService;

    @RequestMapping(value = "/")
    public String index(){
        return "index";
    }

    @RequestMapping(value = "/association_introduction")
    public ModelAndView association_introduction(){

        Association association = associationService.getAssociation(1);
        return new ModelAndView("association_introduction","association_introduction",association);
    }

    @RequestMapping(value = "/association_constitution")
    public ModelAndView association_constitution(){

        Association association = associationService.getAssociation(2);
        return new ModelAndView("association_constitution","association_constitution",association);
    }

    @RequestMapping(value = "/ueditor")
    public String ueditor(){
        return "editor";
    }

    @RequestMapping(value = "/cover_editor")
    public String coverEditor(){
        return "cover_editor";
    }

    @RequestMapping(value = "/member_info")
    public String memberInfo(){
        return "member_info";
    }



    @RequestMapping(value = "/association_introduction_updateRecord", method = POST)
    public @ResponseBody String updateIntroductionRecord(@RequestBody String data){

        JSONObject requestData = new JSONObject(data);

        Association association = associationService.getAssociation(1);
        association.setContent(requestData.getString("content"));
        associationService.saveAssociation(association);

        JSONObject jsonObject = new JSONObject();

        jsonObject.put("key", "OK");

        return jsonObject.toString();
    }

    @RequestMapping(value = "/association_constitution_updateRecord", method = POST)
    public @ResponseBody String updateConstitutionRecord(@RequestBody String data){

        JSONObject requestData = new JSONObject(data);

        Association association = associationService.getAssociation(2);
        association.setContent(requestData.getString("content"));
        associationService.saveAssociation(association);

        JSONObject jsonObject = new JSONObject();

        jsonObject.put("key", "OK");

        return jsonObject.toString();
    }

    @RequestMapping(value = "/addMember", method = POST)
    public @ResponseBody String addMember(@RequestBody String data){

        JSONObject requestData = new JSONObject(data);

        Member member = new Member();
        member.setName(requestData.getString("memberName"));
        member.setCover(requestData.getString("cover"));
        memberService.insertMember(member);

        JSONObject jsonObject = new JSONObject();

        jsonObject.put("key", "OK");

        return jsonObject.toString();
    }





    @RequestMapping(value = "/greenStyle")
    public String greenStyle(){
        return "greenStyle";
    }

    @RequestMapping(value = "/traditionStyle")
    public String traditionStyle(){
        return "traditionStyle";
    }

    @RequestMapping(value = "/professionStyle")
    public String professionStyle(){
        return "professionStyle";
    }

    @RequestMapping(value = "/activity")
    public String activity(){
        return "activity";
    }

    @RequestMapping(value = "/serviceCenter")
    public String serviceCenter(){
        return "serviceCenter";
    }
}
