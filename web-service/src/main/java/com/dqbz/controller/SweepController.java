package com.dqbz.controller;

import com.dqbz.model.Sweep;
import com.dqbz.service.SweepService;
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

public class SweepController {


    @Autowired
    private SweepService SweepService;

    @RequestMapping(value = "/sweepList")
    public ModelAndView getSweepList(){

        List<Sweep> sweep = SweepService.getAllSweep();

        return new ModelAndView("sweepList","sweepList",sweep);
    }

    @RequestMapping(value = "/addSweepPage")
    public ModelAndView addSweepPage(@RequestParam("type") String type){

        return new ModelAndView("addSweep","type",type);
    }

    @RequestMapping(value = "/updateSweepPage")
    public String updateSweepPage(){

        return "updateSweep";
    }

    @RequestMapping(value = "/addSweep", method = POST)
    public @ResponseBody String SweepList(@RequestBody String data){

        JSONObject requestData = new JSONObject(data);

        Sweep sweep = new Sweep();
        sweep.setCusname(requestData.getString(""));

        SweepService.addSweep(sweep);

        JSONObject jsonObject = new JSONObject();

        jsonObject.put("key", "OK");

        return jsonObject.toString();
    }


    @RequestMapping(value = "/getSweepByID")
    public @ResponseBody ModelAndView getSweepByID(HttpServletRequest request){

        String SweepID = request.getParameter("SweepID");

        return new ModelAndView("updateSweep","Sweep",SweepService.getSweepByID(Integer.parseInt(SweepID)));
    }

    @RequestMapping(value = "/deleteSweepByID", method = POST)
    public @ResponseBody String deleteSweepByID(@RequestBody String data){

        JSONObject requestData = new JSONObject(data);

        int SweepID = Integer.parseInt(requestData.getString("SweepID"));

        SweepService.deleteSweepByID(SweepID);

        JSONObject jsonObject = new JSONObject();

        jsonObject.put("key", "OK");

        return jsonObject.toString();
    }

    @RequestMapping(value = "/updateSweep", method = POST)
    public @ResponseBody String updateSweep(@RequestBody String data) {

        JSONObject requestData = new JSONObject(data);

        int id = Integer.parseInt(requestData.getString("sweepID"));

        Sweep sweep = SweepService.selectSweepByID(id);
        sweep.setUpdateTime(new Date());

        SweepService.updateSweep(sweep);

        JSONObject jsonObject = new JSONObject();

        jsonObject.put("key", "OK");

        return jsonObject.toString();
    }
}
