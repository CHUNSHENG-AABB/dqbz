package com.dqbz.controller;

import com.dqbz.model.Association;
import com.dqbz.service.AssociationService;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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

    @RequestMapping(value = "/video")
    public String video(){
        return "video";
    }

    @RequestMapping(value = "/associationList")
    public ModelAndView associationList(@RequestParam("type")String type){

        List<Association> associationList = associationService.getAssociationByType(type);
        String typeName = "";
        Map map = new HashMap();
        map.put("associationList",associationList);

        if (type.equals("1")){
            typeName = "协会简介";
        }
        if (type.equals("2")){
            typeName = "协会章程";
        }
        if (type.equals("3")){
            typeName = "协会概况";
        }
        if (type.equals("4")){
            typeName = "协会机构";
        }
        map.put("type",type);
        map.put("typeName",typeName);

        return new ModelAndView("associationList","map",map);
    }


    @RequestMapping(value = "/updateAssociation", method = POST)
    public @ResponseBody String updateIntroductionRecord(@RequestBody String data){

        JSONObject requestData = new JSONObject(data);

        Association association = associationService.getAssociation(requestData.getInt("associationID"));
        association.setContent(requestData.getString("content"));
        association.setUpdateTime(new Date());
        associationService.saveAssociation(association);

        JSONObject jsonObject = new JSONObject();

        jsonObject.put("key", "OK");

        return jsonObject.toString();
    }

    @RequestMapping(value = "/getAssociationByID")
    public ModelAndView getAssociationByID(@RequestParam("associationID") int associationID){

        Association association = associationService.getAssociation(associationID);
        String typeName = "";
        Map map = new HashMap();
        map.put("association",association);
        if (association.getType().equals("1")){
            typeName = "协会简介";
        }
        if (association.getType().equals("2")){
            typeName = "协会章程";
        }
        if (association.getType().equals("3")){
            typeName = "协会概况";
        }
        if (association.getType().equals("4")){
            typeName = "协会";
        }
        map.put("typeName",typeName);
        return new ModelAndView("updateAssociation","map",map);
    }


}
