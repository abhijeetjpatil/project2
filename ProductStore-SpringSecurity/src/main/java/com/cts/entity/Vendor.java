package com.cts.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

@Entity
@Table(name="vendor_tab")

public class Vendor {
	
	public Vendor() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Id
	@Column(name="vendor_id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	int id;
	
	@NotNull
	@Column(name="name",length=50)
	String name;
	
	@Column(name="location",length=50)
	String location;
	
	@Column(name="contact")
	int contact;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public int getContact() {
		return contact;
	}

	public void setContact(int contact) {
		this.contact = contact;
	}

	public Vendor(int id, String name, String location, int contact) {
		super();
		this.id = id;
		this.name = name;
		this.location = location;
		this.contact = contact;
	}

	public Vendor(String name, String location, int contact) {
		super();
		this.name = name;
		this.location = location;
		this.contact = contact;
	}

	@Override
	public String toString() {
		return "Vendor [id=" + id + ", name=" + name + ", location=" + location + ", contact=" + contact + "]";
	}
	
}
