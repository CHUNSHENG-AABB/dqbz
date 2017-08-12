package com.dqbz.controller;

import com.dqbz.model.Sir;
import com.dqbz.service.SirService;
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
 * 推荐服务点及先生
 * Created by lynn on 2017/7/9.
 */
@Controller
@RequestMapping("/")

public class SirController {


    @Autowired
    private SirService SirService;

    @RequestMapping(value = "/sirList")
    public ModelAndView getSirList(@RequestParam("type") String type){

        List<Sir> sir = SirService.getSirByType(type);
        Map map = new HashMap();
        map.put("sirList",sir);
        map.put("type",type);
        return new ModelAndView("sirList","map",map);
    }

    @RequestMapping(value = "/addSirPage")
    public ModelAndView addSirPage(@RequestParam("type") String type){

        return new ModelAndView("addSir","type",type);
    }

    @RequestMapping(value = "/updateSirPage")
    public String updateSirPage(){

        return "updateSir";
    }

    @RequestMapping(value = "/addSir", method = POST)
    public @ResponseBody String SirList(@RequestBody String data){

        JSONObject requestData = new JSONObject(data);

        Sir Sir = new Sir();
        Sir.setName(requestData.getString("name"));
        Sir.setIntroduction(requestData.getString("intro"));
        Sir.setContent(requestData.getString("content"));
        Sir.setType(requestData.getString("type"));

        SirService.addSir(Sir);

        JSONObject jsonObject = new JSONObject();

        jsonObject.put("key", "OK");

        return jsonObject.toString();
    }


    @RequestMapping(value = "/getSirByID")
    public @ResponseBody ModelAndView getSirByID(HttpServletRequest request){

        String SirID = request.getParameter("SirID");

        return new ModelAndView("updateSir","sir",SirService.getSirByID(Integer.parseInt(SirID)));
    }

    @RequestMapping(value = "/deleteSirByID", method = POST)
    public @ResponseBody String deleteSirByID(@RequestBody String data){

        JSONObject requestData = new JSONObject(data);

        int SirID = Integer.parseInt(requestData.getString("SirID"));

        SirService.deleteSirByID(SirID);

        JSONObject jsonObject = new JSONObject();

        jsonObject.put("key", "OK");

        return jsonObject.toString();
    }

    @RequestMapping(value = "/updateSir", method = POST)
    public @ResponseBody String updateSir(@RequestBody String data) {

        JSONObject requestData = new JSONObject(data);

        int id = Integer.parseInt(requestData.getString("SirID"));

        Sir Sir = SirService.selectSirByID(id);
        Sir.setName(requestData.getString("name"));
        Sir.setIntroduction(requestData.getString("intro"));
        Sir.setContent(requestData.getString("content"));
        Sir.setType(requestData.getString("type"));
        Sir.setUpdateTime(new Date());

        SirService.updateSir(Sir);

        JSONObject jsonObject = new JSONObject();

        jsonObject.put("key", "OK");

        return jsonObject.toString();
    }
}
