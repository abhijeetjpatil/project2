package com.cts.dao;

import java.util.List;

import com.cts.entity.Product;

public interface ProductDAO {
	
	void saveProduct(Product book);
	List<Product> listProducts();
	Product getProduct(int product_id);
	void deleteProduct(int product_id);
}
