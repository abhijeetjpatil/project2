package com.cts.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.cts.entity.Product;
import com.cts.entity.Vendor;
import com.cts.service.VendorService;

@Controller
@RequestMapping("/vendor")
public class VendorController {
	
	@Autowired
	VendorService vendorService;
	
	@GetMapping("/list")
	@Transactional
	public String getAllVendor(Model model)
	{
		System.out.println("Get all vendors");
		List<Vendor>lb=vendorService.getAllVendors();
		model.addAttribute("vendor",lb);
		return "vendorList";
	}
	@GetMapping("/showForm")
	@Transactional
	public String showFormForAdd(Model theModel){
		Vendor theVendor = new Vendor();
		theModel.addAttribute("vendor", theVendor);
		return "addVendor";
	}
	@PostMapping("/saveVendor")
	@Transactional
	public String saveProduct(@ModelAttribute("vendor")Vendor theVendor){
		vendorService.saveVendor(theVendor);
		return "redirect:/vendor/list";
	}
	@GetMapping("/view")
	@Transactional
	public String viewForm(@RequestParam("vendorId") int theId , Model theModel){
		Vendor theVendor = vendorService.getVendor(theId);
		theModel.addAttribute("vendor", theVendor);
		
		return "detailsVendor";
	}
	
	@GetMapping("/delete")
	@Transactional
	public String deleteAVendor(@RequestParam("vendorId") int theId){
		vendorService.deleteVendor(theId);
		return "redirect:/vendor/list";	}
	

}