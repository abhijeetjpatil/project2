package com.cts.service;

import java.util.List;

import com.cts.entity.Vendor;

public interface VendorService {
	List<Vendor> getAllVendors();
	void saveVendor(Vendor vendor);
	public Vendor getVendor(int theId);
	public void deleteVendor(int theId);
}