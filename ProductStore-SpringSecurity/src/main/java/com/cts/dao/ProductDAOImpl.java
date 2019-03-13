package com.cts.dao;

import java.util.List;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cts.entity.Product;

@Repository("productDAO")
public class ProductDAOImpl implements ProductDAO {
	
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void saveProduct(Product product) {

		sessionFactory.getCurrentSession().saveOrUpdate(product);
		System.out.println("Data is Added");
		
	}

	@Override
	public List<Product> listProducts() {

		System.out.println(" Hello "+sessionFactory);
		Session session = sessionFactory.getCurrentSession();
		CriteriaBuilder cb = session.getCriteriaBuilder();
		CriteriaQuery <Product> cq = cb.createQuery(Product.class);
		Root<Product> root= cq.from(Product.class);
		cq.select(root);
		Query query = session.createQuery(cq);
		return query.getResultList();	
	
	}

	@Override
	public Product getProduct(int product_id) {
	
		Session currentSession = sessionFactory.getCurrentSession();
		Product theProduct=currentSession.get(Product.class, product_id);
		return theProduct;
	}

	@Override
	public void deleteProduct(int product_id) {
	
		Session currentSession = sessionFactory.getCurrentSession();
		Product theProduct=currentSession.get(Product.class,product_id);
		currentSession.delete(theProduct);
		System.out.println("Book with "+product_id+" is deleted");
	}
	

}
