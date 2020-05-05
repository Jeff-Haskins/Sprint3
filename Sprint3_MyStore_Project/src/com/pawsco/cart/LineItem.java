package com.pawsco.cart;

import java.io.Serializable;

import com.pawsco.business.Product;

public class LineItem implements Serializable {

	private static final long serialVersionUID = 1L;
	private Product product;
	private int qty;
	

	public LineItem() {
		this.product = new Product();
		this.qty = 0;
	}
	
	public LineItem(Product product, int qty) {
		this.product = product;
		this.qty = qty;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public int getQty() {
		return qty;
	}

	public void setQty(int qty) {
		this.qty = qty;
	}
}
