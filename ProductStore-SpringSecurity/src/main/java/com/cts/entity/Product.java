package com.cts.entity;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="product")
public class Product {
	
	@Id
	@Column(name="product_id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	int product_id;
	
	@Column(name="brand",length=50)
	String brand;
	
	@Column(name="category",length=50)
	String category;
	
	@Column(name="name",length=50)
	String name;
	
	@Column(name="description",length=50)
	String description;
	
	@Column(name="price")
	float price;
	
	@Column(name="rating")
	float rating;

	public int getProduct_id() {
		return product_id;
	}

	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}

	public String getBrand() {
		return brand;
	}

	public void setBrand(String brand) {
		this.brand = brand;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public float getPrice() {
		return price;
	}

	public void setPrice(float price) {
		this.price = price;
	}

	public float getRating() {
		return rating;
	}

	public void setRating(float rating) {
		this.rating = rating;
	}

	@Override
	public String toString() {
		return "Product [product_id=" + product_id + ", brand=" + brand + ", category=" + category + ", name=" + name
				+ ", description=" + description + ", price=" + price + ", rating=" + rating + "]";
	}

	public Product(int product_id, String brand, String category, String name, String description, float price,
			float rating) {
		super();
		this.product_id = product_id;
		this.brand = brand;
		this.category = category;
		this.name = name;
		this.description = description;
		this.price = price;
		this.rating = rating;
	}

	public Product() {
		super();
		// TODO Auto-generated constructor stub
	}
		
	

}
