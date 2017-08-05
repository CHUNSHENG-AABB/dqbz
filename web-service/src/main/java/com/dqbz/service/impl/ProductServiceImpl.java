package com.dqbz.service.impl;

import com.dqbz.dao.ProductMapper;
import com.dqbz.model.Product;
import com.dqbz.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductServiceImpl implements ProductService{

    @Autowired
    private ProductMapper ProductMapper;

    @Override
    public List<Product> getAllProduct(){
        return ProductMapper.selectAllProduct();
    }

    @Override
    public int addProduct(Product Product){

        return ProductMapper.insertSelective(Product);
    }

    @Override
    public int updateProduct(Product Product){
        return ProductMapper.updateByPrimaryKeyWithBLOBs(Product);
    }

    @Override
    public Product getProductByID(int id){
        return ProductMapper.selectByPrimaryKey(id);
    }

    @Override
    public int deleteProductByID(int id){

        return ProductMapper.deleteByPrimaryKey(id);
    }

    @Override
    public Product selectProductByID(int id){

        return ProductMapper.selectByPrimaryKey(id);
    }

}
