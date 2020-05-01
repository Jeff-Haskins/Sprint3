package com.pawsco.business;

import java.io.Serializable;

public class Product implements Serializable {

	private static final long serialVersionUID = 1L;
	private int id;
	private String name;
	private String category;
	private String description;
	private double price;
	private String imgFile;
	
	public Product() {
		this.id = 0;
		this.name = "";
		this.category = "";
		this.description = "";
		this.price = 0;
		this.imgFile = "";
	}
	
	public Product(int id, String name, String category, String description, double price, String imgPath) {
		this.id = id;
		this.name = name;
		this.category = category;
		this.description = description;
		this.price = price;
		this.imgFile = imgPath;
	}
	
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
	
	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
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

	public String getImgFile() {
		return imgFile;
	}

	public void setImgFile(String imgPath) {
		this.imgFile = imgPath;
	}

}
