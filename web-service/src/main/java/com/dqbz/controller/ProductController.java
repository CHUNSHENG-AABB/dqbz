package com.dqbz.controller;

import com.dqbz.model.Product;
import com.dqbz.service.ProductService;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

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

    @RequestMapping(value = "/productList")
    public ModelAndView getProductList(){

        List<Product> ProductList = ProductService.getAllProduct();
        return new ModelAndView("ProductList","ProductList",ProductList);
    }

    @RequestMapping(value = "/addProductPage")
    public String addProductPage(){

        return "addProduct";
    }

    @RequestMapping(value = "/updateProductPage")
    public String updateProductPage(){

        return "updateProduct";
    }

    @RequestMapping(value = "/addProduct", method = POST)
    public @ResponseBody String ProductList(@RequestBody String data){

        JSONObject requestData = new JSONObject(data);

        Product Product = new Product();


        ProductService.addProduct(Product);

        JSONObject jsonObject = new JSONObject();

        jsonObject.put("key", "OK");

        return jsonObject.toString();
    }

    @RequestMapping(value = "/getProductByID")
    public @ResponseBody ModelAndView getProductByID(HttpServletRequest request){

        String ProductID = request.getParameter("ProductID");

        return new ModelAndView("updateProduct","Product",ProductService.getProductByID(Integer.parseInt(ProductID)));
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

        Product Product = ProductService.selectProductByID(id);

        ProductService.updateProduct(Product);

        JSONObject jsonObject = new JSONObject();

        jsonObject.put("key", "OK");

        return jsonObject.toString();
    }
}
