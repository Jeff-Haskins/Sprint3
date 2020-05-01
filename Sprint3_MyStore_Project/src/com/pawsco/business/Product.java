package com.pawsco.business;

import java.io.Serializable;

public class Product implements Serializable {

	private static final long serialVersionUID = 1L;
	private String name;
	private String description;
	private double price;
	private String imgFile;
	
	public Product() {
		this.name = "";
		this.description = "";
		this.price = 0;
		this.imgFile = "";
	}
	
	public Product(String name, String description, double price, String imgPath) {
		this.name = name;
		this.description = description;
		this.price = price;
		this.imgFile = imgPath;
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

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public String getImgPath() {
		return imgFile;
	}

	public void setImgPath(String imgPath) {
		this.imgFile = imgPath;
	}

}
