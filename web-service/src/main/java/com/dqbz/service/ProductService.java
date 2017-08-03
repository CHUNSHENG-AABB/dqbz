package com.dqbz.service;

import com.dqbz.model.News;
import com.dqbz.model.Product;

import java.util.List;


/**
 * Created by o on 2017/7/23.
 */
public interface ProductService {

	List<Product> getAllProduct();

	int addProduct(Product news);

	int updateProduct(Product news);

	Product getProductByID(int id);

	int deleteProductByID(int id);

	Product selectProductByID(int id);
}
