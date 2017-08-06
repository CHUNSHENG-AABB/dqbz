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

import java.util.Date;
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
    private MemberService memberService;

    @Autowired
    private AssociationService associationService;

    @Autowired
    private ProductService productService;

    @Autowired
    private ServiceService serviceService;

    @Autowired
    private NewsService newsService;

    @Autowired
    private ActivityService activityService;

    @Autowired
    private ArticleService articleService;


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
    public ModelAndView memberDetail(@RequestParam("id") Integer id, @RequestParam("page") String page) {

        page = page == null?"":page;
        Member member = memberService.getMemberById(Integer.valueOf(id));

        Map map = new HashMap();
        map.put("page", page);
        map.put("member", member);
        return new ModelAndView("memberDetail", "entity", map);
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

    @RequestMapping(value = "/fete")
    public String fete() {
        return "fete";
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

    @RequestMapping(value = "/doingActivity")
    public ModelAndView doingActivity(){

        List<Activity> activities = activityService.getDoingActivity(new Date());
        return new ModelAndView("doingActivity", "activities", activities);

    }

    @RequestMapping(value = "/endedActivity")
    public ModelAndView endedActivity(){

        List<Activity> activities = activityService.getEndedActivity(new Date());
        return new ModelAndView("endedActivity", "activities", activities);

    }

    @RequestMapping(value = "/activityDetail")
    public ModelAndView activityDetail(@RequestParam("id") Integer id){

        Activity activity = activityService.getActivityById(id);
        return new ModelAndView("activityDetail", "activity", activity);

    }

    /**
     * 新闻资讯
     * @return
     */
    @RequestMapping(value = "/news")
    public String news() {
        return "news";
    }

    /**
     * 历届会议
     * @return
     */
    @RequestMapping(value = "/meeting")
    public ModelAndView meeting() {

        List<News> news = newsService.getAllByType("1");

        return new ModelAndView("meeting", "news", news);
    }

    /**
     * 新闻资讯
     * @return
     */
    @RequestMapping(value = "/information")
    public ModelAndView information() {

        List<News> news = newsService.getAllByType("2");

        return new ModelAndView("information", "news", news);
    }


    /**
     * 新闻详情
     * @return
     */
    @RequestMapping(value = "/newDetail")
    public ModelAndView newDetail(@RequestParam("newId") Integer newId) {

        News news = newsService.getById(newId);

        return new ModelAndView("newDetail", "news", news);
    }

    @RequestMapping(value = "/article")
    public ModelAndView greenStyle(@RequestParam("type") String type) {

        Article article = articleService.getArticleListByType(type);

        if ("1".equals(type)){
            return new ModelAndView("greenStyle", "article", article);
        }if ("2".equals(type) || "3".equals(type)){
            return new ModelAndView("traditionStyle", "article", article);
        }if ("4".equals(type) || "5".equals(type)){
            return new ModelAndView("professionStyle", "article", article);
        }if ("6".equals(type) || "7".equals(type) || "8".equals(type) || "9".equals(type)){
            return new ModelAndView("serviceCenter", "article", article);
        }else{
            return new ModelAndView("article", "article", article);
        }

    }


}
