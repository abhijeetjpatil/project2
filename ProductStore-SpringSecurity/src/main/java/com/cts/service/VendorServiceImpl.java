package com.cts.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cts.dao.VendorDAO;
import com.cts.entity.Product;
import com.cts.entity.Vendor;

@Service("vendorService")
public class VendorServiceImpl implements VendorService {
	
	@Autowired
	VendorDAO vendorDAO;

	@Override
	@Transactional
	public List<Vendor> getAllVendors() {
		// TODO Auto-generated method stub
		return vendorDAO.listAllVendor();
	}

	@Override
	@Transactional
	public void saveVendor(Vendor vendor) {
		// TODO Auto-generated method stub
		vendorDAO.saveVendor(vendor);
	}

	@Override
	public Vendor getVendor(int theId) {
		// TODO Auto-generated method stub
		Vendor vendor=vendorDAO.getVendor(theId);
		return vendor;
	}

	@Override
	public void deleteVendor(int theId) {
		// TODO Auto-generated method stub
		vendorDAO.deleteVendor(theId);
	}
	
	

}
