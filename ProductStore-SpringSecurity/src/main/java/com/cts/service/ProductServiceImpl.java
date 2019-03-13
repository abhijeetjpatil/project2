package com.cts.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cts.dao.ProductDAO;
import com.cts.entity.Product;

@Service("productService")
public class ProductServiceImpl implements ProductService {
	
	@Autowired
	private ProductDAO productDAO;

	@Override
	@Transactional
	public void saveProduct(Product Product) {
		
		productDAO.saveProduct(Product);
	}

	@Override
	@Transactional
	public List<Product> listProducts() {
		
		return productDAO.listProducts();
	}

	@Override
	@Transactional
	public Product getProduct(int product_id) {
		
		
		Product product = productDAO.getProduct(product_id);
		 return product;
	}

	@Override
	@Transactional
	public void deleteProduct(int product_id) {
		
		productDAO.deleteProduct(product_id);
		
	}

}
