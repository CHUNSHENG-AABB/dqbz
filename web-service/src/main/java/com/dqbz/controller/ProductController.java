package com.dqbz.controller;

import com.dqbz.model.Member;
import com.dqbz.model.Product;
import com.dqbz.service.MemberService;
import com.dqbz.service.ProductService;
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

public class ProductController {


    @Autowired
    private ProductService ProductService;

    @Autowired
    private MemberService memberService;

    @RequestMapping(value = "/productList")
    public ModelAndView getProductList(){

        List<Product> ProductList = ProductService.getAllProduct();
        return new ModelAndView("productList","ProductList",ProductList);
    }

    @RequestMapping(value = "/addProductPage")
    public ModelAndView addProductPage(){

        List<Member> memberList = memberService.selectAllMember();
        return new ModelAndView("addProduct","memberList",memberList);
    }

    @RequestMapping(value = "/updateProductPage")
    public String updateProductPage(){

        return "updateProduct";
    }

    @RequestMapping(value = "/addProduct", method = POST)
    public @ResponseBody String ProductList(@RequestBody String data){

        JSONObject requestData = new JSONObject(data);

        Product product = new Product();
        product.setName(requestData.getString("productName"));
        product.setCover(requestData.getString("cover"));
        product.setIntroduction(requestData.getString("content"));
        product.setPrice(requestData.getString("price"));
        product.setMemberId(requestData.getInt("memberID"));

        ProductService.addProduct(product);

        JSONObject jsonObject = new JSONObject();

        jsonObject.put("key", "OK");

        return jsonObject.toString();
    }

    @RequestMapping(value = "/getProductByID")
    public @ResponseBody ModelAndView getProductByID(HttpServletRequest request){

        String ProductID = request.getParameter("ProductID");
        Product product = ProductService.getProductByID(Integer.parseInt(ProductID));
        List<Member> memberList = memberService.selectAllMember();
        Member member = memberService.getMember(product.getMemberId());
        Map map = new HashMap();
        map.put("member",member);
        map.put("memberList",memberList);
        map.put("product",product);
        return new ModelAndView("updateProduct","map",map);
    }

    @RequestMapping(value = "/deleteProductByID", method = POST)
    public @ResponseBody String deleteProductByID(@RequestBody String data){

        JSONObject requestData = new JSONObject(data);

        int ProductID = Integer.parseInt(requestData.getString("ProductID"));

        ProductService.deleteProductByID(ProductID);

        JSONObject jsonObject = new JSONObject();

        jsonObject.put("key", "OK");

        return jsonObject.toString();
    }

    @RequestMapping(value = "/updateProduct", method = POST)
    public @ResponseBody String updateProduct(@RequestBody String data) {

        JSONObject requestData = new JSONObject(data);

        int id = Integer.parseInt(requestData.getString("ProductID"));

        Product product = ProductService.selectProductByID(id);

        product.setName(requestData.getString("productName"));
        product.setCover(requestData.getString("cover"));
        product.setIntroduction(requestData.getString("content"));
        product.setPrice(requestData.getString("price"));
        product.setMemberId(requestData.getInt("memberID"));
        product.setUpdateTime(new Date());
        ProductService.updateProduct(product);

        JSONObject jsonObject = new JSONObject();

        jsonObject.put("key", "OK");

        return jsonObject.toString();
    }
}
