package com.cts.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.engine.transaction.jta.platform.internal.SynchronizationRegistryBasedSynchronizationStrategy;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.cts.entity.Product;
import com.cts.service.ProductService;

@Controller
@RequestMapping("/product")
public class ProductController {
	
	@Autowired
	ProductService productService;
	
	@GetMapping("/list")
	public String listAllBooks(Model model) {
		System.out.println("Entered in ListAllBooks Controller");
		List<Product> lp= productService.listProducts();
		System.out.println("ProductList: "+lp);
		model.addAttribute("Products",lp);
		return "productList";
		
	}
	
	@GetMapping("/showForm")
	public String showFormForAdd(Model theModel){
		System.out.println("I'm adding product details");
		Product theProduct = new Product();
		theModel.addAttribute("product", theProduct);
		return "addProduct";
	}
	
	@PostMapping("/saveProduct")
	public String saveProduct(@ModelAttribute("product")Product theProduct){
		productService.saveProduct(theProduct);
		return "redirect:/product/list";
	}
	
	@GetMapping("/updateForm")
	public String showFormForUpdate(@RequestParam("productId") int theId , Model theModel){
		Product theProduct = productService.getProduct(theId);
		theModel.addAttribute("product", theProduct);
		productService.deleteProduct(theId);
		return "addProduct";
	}
	
	@GetMapping("/delete")
	public String deleteAProduct(@RequestParam("productId") int theId){
		System.out.println(theId);
		productService.deleteProduct(theId);
		return "redirect:/product/list";	}
	
	@RequestMapping(value="/logout", method=RequestMethod.GET)  
    public String logoutPage(HttpServletRequest request, HttpServletResponse response) {  
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();  
        if (auth != null){      
           new SecurityContextLogoutHandler().logout(request, response, auth);  
        }  
         return "redirect:/login";  
     } 
	
	@GetMapping("/viewForm")
	public String viewForm(@RequestParam("productId") int theId , Model theModel){
		Product theProduct = productService.getProduct(theId);
		theModel.addAttribute("product", theProduct);
		
		return "details";
	}
	
}
