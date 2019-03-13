package com.cts.dao;

import java.util.List;

import com.cts.entity.Vendor;


public interface VendorDAO {
	
	void  saveVendor(Vendor vendor);
	List<Vendor>  listAllVendor();
	Vendor getVendor(int id);
	void deleteVendor(int id);

}