package com.cts.service;

import java.util.List;

import com.cts.entity.Product;


public interface ProductService {
	
	void saveProduct(Product product);
	List<Product> listProducts();
	public Product getProduct(int product_id);
	public void deleteProduct(int product_id);

}

