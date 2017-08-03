package com.dqbz.controller;

import com.dqbz.model.Association;
import com.dqbz.service.AssociationService;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import static org.springframework.web.bind.annotation.RequestMethod.POST;

/**
 * 主页
 * Created by lynn on 2017/7/9.
 */
@Controller
@RequestMapping("/")
public class AssociationController {

    @Autowired
    private AssociationService associationService;

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
}
