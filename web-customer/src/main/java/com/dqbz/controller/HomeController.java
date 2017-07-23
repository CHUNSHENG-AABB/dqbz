package com.dqbz.controller;

import com.dqbz.model.Activity;
import com.dqbz.model.Association;
import com.dqbz.model.Member;
import com.dqbz.model.Product;
import com.dqbz.service.AssociationService;
import com.dqbz.service.DemoService;
import com.dqbz.service.MemberService;
import com.dqbz.service.ProductService;
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

}
