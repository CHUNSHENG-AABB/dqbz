package com.dqbz.service.impl;

import com.dqbz.dao.ProductMapper;
import com.dqbz.model.Product;
import com.dqbz.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by lynn on 2017/7/23.
 */
@Service
public class ProductServiceImpl implements ProductService {

    @Autowired
    private ProductMapper productMapper;

    @Override
    public List<Product> getAllProduct(Integer memberId) {

        return productMapper.selectByMemberId(memberId);

    }
}
