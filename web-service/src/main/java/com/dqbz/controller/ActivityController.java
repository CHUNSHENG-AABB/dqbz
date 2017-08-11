package com.dqbz.controller;

import com.dqbz.model.Activity;
import com.dqbz.model.Member;
import com.dqbz.service.ActivityService;
import com.dqbz.service.MemberService;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.text.ParseException;
import java.text.SimpleDateFormat;
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

public class ActivityController {


    @Autowired
    private ActivityService ActivityService;

    @Autowired
    private MemberService memberService;

    @RequestMapping(value = "/ActivityList")
    public ModelAndView getActivityList(){

        List<Activity> ActivityList = ActivityService.getAllActivity();
        return new ModelAndView("ActivityList","ActivityList",ActivityList);
    }

    @RequestMapping(value = "/addActivityPage")
    public ModelAndView addActivityPage(){

        List<Member> memberList = memberService.selectAllMember();
        return new ModelAndView("addActivity","memberList",memberList);
    }

    @RequestMapping(value = "/updateActivityPage")
    public String updateActivityPage(){

        return "updateActivity";
    }

    @RequestMapping(value = "/addActivity", method = POST)
    public @ResponseBody String ActivityList(@RequestBody String data) throws ParseException {

        JSONObject requestData = new JSONObject(data);

        Activity Activity = new Activity();
        Activity.setTitle(requestData.getString("activityName"));
        Activity.setCover(requestData.getString("cover"));
        Activity.setContent(requestData.getString("content"));
        Activity.setIntroduction(requestData.getString("intro"));
        Activity.setMemberid(requestData.getInt("memberID"));
//        String startTime = requestData.getString("startTime").replace("T"," ") + ":00";
//        String endTime = requestData.getString("endTime").replace("T"," ") + ":00";
//        SimpleDateFormat format = (new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"));
//        Activity.setBeginTime(format.parse(startTime));
//        Activity.setEndTime(format.parse(endTime));
        ActivityService.addActivity(Activity);

        JSONObject jsonObject = new JSONObject();

        jsonObject.put("key", "OK");

        return jsonObject.toString();
    }

    @RequestMapping(value = "/getActivityByID")
    public @ResponseBody ModelAndView getActivityByID(HttpServletRequest request){

        String ActivityID = request.getParameter("ActivityID");
        Activity activity = ActivityService.getActivityByID(Integer.parseInt(ActivityID));
        List<Member> memberList = memberService.selectAllMember();
        Member member = memberService.getMember(activity.getMemberid());
        Map map = new HashMap();
        map.put("memberList",memberList);
        map.put("member",member);
        map.put("activity",activity);
        return new ModelAndView("updateActivity","map",map);
    }

    @RequestMapping(value = "/deleteActivityByID", method = POST)
    public @ResponseBody String deleteActivityByID(@RequestBody String data){

        JSONObject requestData = new JSONObject(data);

        int ActivityID = Integer.parseInt(requestData.getString("ActivityID"));

        ActivityService.deleteActivityByID(ActivityID);

        JSONObject jsonObject = new JSONObject();

        jsonObject.put("key", "OK");

        return jsonObject.toString();
    }

    @RequestMapping(value = "/updateActivity", method = POST)
    public @ResponseBody String updateActivity(@RequestBody String data) throws ParseException {

        JSONObject requestData = new JSONObject(data);

        int id = Integer.parseInt(requestData.getString("ActivityID"));

        Activity Activity = ActivityService.selectActivityByID(id);

        Activity.setTitle(requestData.getString("activityName"));
        Activity.setCover(requestData.getString("cover"));
        Activity.setContent(requestData.getString("content"));
        Activity.setIntroduction(requestData.getString("intro"));
        Activity.setMemberid(requestData.getInt("memberID"));
//        String startTime = requestData.getString("startTime").replace("T"," ") + ":00";
//        String endTime = requestData.getString("endTime").replace("T"," ") + ":00";
//        SimpleDateFormat format = (new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"));
//        Activity.setBeginTime(format.parse(startTime));
//        Activity.setEndTime(format.parse(endTime));
        Activity.setUpdateTime(new Date());
        ActivityService.updateActivity(Activity);

        JSONObject jsonObject = new JSONObject();

        jsonObject.put("key", "OK");

        return jsonObject.toString();
    }
}
