package com.dqbz.service;

import com.dqbz.model.Product;

import java.util.List;

/**
 * Created by lynn on 2017/7/23.
 */
public interface ProductService {

    List<Product> getAllProduct(Integer memberId);



}
