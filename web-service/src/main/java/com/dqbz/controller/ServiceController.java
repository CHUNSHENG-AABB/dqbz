package com.dqbz.controller;

import com.dqbz.model.Member;
import com.dqbz.model.Service;
import com.dqbz.service.MemberService;
import com.dqbz.service.ServiceService;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
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

public class ServiceController {


    @Autowired
    private ServiceService ServiceService;

    @Autowired
    private MemberService memberService;

    @RequestMapping(value = "/ServiceList")
    public ModelAndView getServiceList(){

        List<Service> ServiceList = ServiceService.getAllService();
        return new ModelAndView("serviceList","ServiceList",ServiceList);
    }

    @RequestMapping(value = "/addServicePage")
    public ModelAndView addServicePage(){

        List<Member> memberList = memberService.selectAllMember();
        return new ModelAndView("addService","memberList",memberList);
    }

    @RequestMapping(value = "/updateServicePage")
    public String updateServicePage(){

        return "updateService";
    }

    @RequestMapping(value = "/addService", method = POST)
    public @ResponseBody String ServiceList(@RequestBody String data){

        JSONObject requestData = new JSONObject(data);

        Service Service = new Service();
        Service.setName(requestData.getString("serviceName"));
        Service.setMemberId(requestData.getInt("memberID"));
        Service.setContext(requestData.getString("content"));
        ServiceService.addService(Service);
        JSONObject jsonObject = new JSONObject();

        jsonObject.put("key", "OK");

        return jsonObject.toString();
    }

    @RequestMapping(value = "/getServiceByID")
    public @ResponseBody ModelAndView getServiceByID(HttpServletRequest request){

        String ServiceID = request.getParameter("ServiceID");
        Service service = ServiceService.getServiceByID(Integer.parseInt(ServiceID));
        List<Member> memberList = memberService.selectAllMember();
        Member member = memberService.getMember(service.getMemberId());
        Map map = new HashMap();
        map.put("memberList",memberList);
        map.put("member",member);
        map.put("service",service);
        return new ModelAndView("updateService","map",map);
    }

    @RequestMapping(value = "/deleteServiceByID", method = POST)
    public @ResponseBody String deleteServiceByID(@RequestBody String data){

        JSONObject requestData = new JSONObject(data);

        int ServiceID = Integer.parseInt(requestData.getString("ServiceID"));

        ServiceService.deleteServiceByID(ServiceID);

        JSONObject jsonObject = new JSONObject();

        jsonObject.put("key", "OK");

        return jsonObject.toString();
    }

    @RequestMapping(value = "/updateService", method = POST)
    public @ResponseBody String updateService(@RequestBody String data) {

        JSONObject requestData = new JSONObject(data);

        int id = Integer.parseInt(requestData.getString("ServiceID"));

        Service Service = ServiceService.selectServiceByID(id);
        Service.setName(requestData.getString("serviceName"));
        Service.setMemberId(requestData.getInt("memberID"));
        Service.setContext(requestData.getString("content"));
        Service.setUpdateTime(new Date());
        ServiceService.updateService(Service);

        JSONObject jsonObject = new JSONObject();

        jsonObject.put("key", "OK");

        return jsonObject.toString();
    }
}
