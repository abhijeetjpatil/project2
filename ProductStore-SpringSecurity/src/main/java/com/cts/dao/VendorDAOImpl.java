package com.cts.dao;

import java.util.List;

import javax.persistence.Query;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cts.entity.Product;
import com.cts.entity.Vendor;

@Repository("vendorDAO")
public class VendorDAOImpl implements VendorDAO{
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void saveVendor(Vendor vendor) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().saveOrUpdate(vendor);
		System.out.println("Data Saved");
		
	}

	@Override
	public List<Vendor> listAllVendor() {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		CriteriaBuilder cb=session.getCriteriaBuilder();
		CriteriaQuery<Vendor> cq=cb.createQuery(Vendor.class);
		Root<Vendor> root =cq.from(Vendor.class);
		cq.select(root);
		Query query =session.createQuery(cq);
		return query.getResultList();
	}

	@Override
	public Vendor getVendor(int id) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Vendor vendor=session.get(Vendor.class,id);
		return vendor;
	}

	@Override
	public void deleteVendor(int id) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Vendor vendor =session.byId(Vendor.class).load(id);
		session.delete(vendor);
		
	}

}
