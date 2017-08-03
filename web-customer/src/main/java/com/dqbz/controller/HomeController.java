package com.dqbz.controller;

import com.dqbz.model.*;
import com.dqbz.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 主页
 * Created by lynn on 2017/7/9.
 */
@Controller
@RequestMapping("/")
public class HomeController {

    @Autowired
    private DemoService demoService;

    @Autowired
    private MemberService memberService;

    @Autowired
    private AssociationService associationService;

    @Autowired
    private ProductService productService;

    @Autowired
    private ServiceService serviceService;

    @Autowired
    private NewsService newsService;

    @RequestMapping(value = "/")
    public ModelAndView index() {

        Activity activity = demoService.getAllActivity();
        Map map = new HashMap();
        map.put("aa", "kkk");
        return new ModelAndView("index", "a", map);
    }

    @RequestMapping(value = "/members")
    public ModelAndView members() {

        List<Member> members = memberService.getAllMembers();
        return new ModelAndView("members", "members", members);

    }

    @RequestMapping(value = "/association")
    public ModelAndView association() {

        Association association = associationService.getContent();
        return new ModelAndView("association", "association", association);

    }

    @RequestMapping(value = "/constitution")
    public ModelAndView constitution() {

        Association constitution = associationService.getConstitution();
        return new ModelAndView("constitution", "constitution", constitution);

    }

    @RequestMapping(value = "/memberDetail")
    public ModelAndView memberDetail(@RequestParam("id") Integer id) {

        Member member = memberService.getMemberById(Integer.valueOf(id));
        return new ModelAndView("memberDetail", "member", member);
    }

    @RequestMapping(value = "/news")
    public String news() {
        return "news";
    }

    @RequestMapping(value = "/greenStyle")
    public String greenStyle() {
        return "greenStyle";
    }

    @RequestMapping(value = "/traditionStyle")
    public String traditionStyle() {
        return "traditionStyle";
    }

    @RequestMapping(value = "/professionStyle")
    public String professionStyle() {
        return "professionStyle";
    }

    @RequestMapping(value = "/activity")
    public String activity() {
        return "activity";
    }

    @RequestMapping(value = "/serviceCenter")
    public String serviceCenter() {
        return "serviceCenter";
    }


    /**
     * 产品介绍及价格
     * @param memberId
     * @return
     */
    @RequestMapping(value = "/product")
    public ModelAndView product(@RequestParam("memberId") Integer memberId) {

        List<Product> products = productService.getAllProduct(memberId);

        return new ModelAndView("product", "products", products);

    }


    /**
     * 会员单位--服务及收费标准
     * @param memberId
     * @return
     */
    @RequestMapping(value = "/service")
    public ModelAndView service(@RequestParam("memberId") Integer memberId){

        Service service = serviceService.getServiceByMemberId(memberId);
        return new ModelAndView("service", "service", service);
    }


    @RequestMapping(value = "/contact")
    public ModelAndView contact(@RequestParam("memberId") Integer memberId){

        Member member = memberService.getMemberById(Integer.valueOf(memberId));
        return new ModelAndView("contact", "member", member);
    }

    @RequestMapping(value = "/notice")
    public ModelAndView news(@RequestParam("memberId") Integer memberId){

        List<News> news = newsService.getNewsByMemberId(memberId);
        return new ModelAndView("notice", "news", news);

    }

}
