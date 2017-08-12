package com.dqbz.controller;

import com.dqbz.model.Member;
import com.dqbz.model.Resource;
import com.dqbz.service.MemberService;
import com.dqbz.service.ResourceService;
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

public class ResourceController {


    @Autowired
    private ResourceService ResourceService;

    @Autowired
    private MemberService memberService;

    @RequestMapping(value = "/resourceList")
    public ModelAndView getResourceList(@RequestParam("type") String type){

        List<Resource> Resource = ResourceService.getResourceByType(type);
        Map map = new HashMap();
        map.put("resourceList",Resource);
        map.put("type",type);
        return new ModelAndView("resourceList","map",map);
    }

    @RequestMapping(value = "/addResourcePage")
    public ModelAndView addVideoPage(@RequestParam("type")String type){

        List<Member> memberList = memberService.selectAllMember();

        String viewName = "";

        if (type.equals("2")){

            viewName = "addVideo";
        }

        if (type.equals("1")){

            viewName = "addPicture";
        }

        Map map = new HashMap();
        map.put("memberList",memberList);
        map.put("type",type);

        return new ModelAndView(viewName,"map",map);
    }


    @RequestMapping(value = "/addResource", method = POST)
    public @ResponseBody String ResourceList(@RequestBody String data){

        JSONObject requestData = new JSONObject(data);

        Resource resource = new Resource();
        resource.setTitle(requestData.getString("title"));
        resource.setMemberid(requestData.getInt("memberID"));
        resource.setUrl(requestData.getString("videoUrl"));
        resource.setType(requestData.getString("type"));
        resource.setIntroduction(requestData.getString("content"));

        ResourceService.addResource(resource);

        JSONObject jsonObject = new JSONObject();

        jsonObject.put("key", "OK");

        return jsonObject.toString();
    }


    @RequestMapping(value = "/getResourceByID")
    public @ResponseBody ModelAndView getResourceByID(HttpServletRequest request){

        String ResourceID = request.getParameter("resourceID");

        Resource resource = ResourceService.getResourceByID(Integer.parseInt(ResourceID));

        String viewName = "";

        if (resource.getType().equals("2")){

            viewName = "updateVideo";
        }

        if (resource.getType().equals("1")){

            viewName = "updatePicture";
        }

        return new ModelAndView(viewName,"resource",resource);
    }

    @RequestMapping(value = "/deleteResourceByID", method = POST)
    public @ResponseBody String deleteResourceByID(@RequestBody String data){

        JSONObject requestData = new JSONObject(data);

        int ResourceID = Integer.parseInt(requestData.getString("resourceID"));

        ResourceService.deleteResourceByID(ResourceID);

        JSONObject jsonObject = new JSONObject();

        jsonObject.put("key", "OK");

        return jsonObject.toString();
    }

    @RequestMapping(value = "/updateResource", method = POST)
    public @ResponseBody String updateResource(@RequestBody String data) {

        JSONObject requestData = new JSONObject(data);

        int id = Integer.parseInt(requestData.getString("resourceID"));

        Resource resource = ResourceService.selectResourceByID(id);
        resource.setTitle(requestData.getString("title"));
        resource.setUrl(requestData.getString("videoUrl"));
        resource.setType(requestData.getString("type"));
        resource.setIntroduction(requestData.getString("content"));
        resource.setUpdateTime(new Date());

        ResourceService.updateResource(resource);

        JSONObject jsonObject = new JSONObject();

        jsonObject.put("key", "OK");

        return jsonObject.toString();
    }
}
