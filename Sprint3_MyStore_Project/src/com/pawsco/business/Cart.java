package com.pawsco.business;

import java.io.Serializable;
import java.util.ArrayList;

import com.pawsco.cart.LineItem;

public class Cart implements Serializable{

	private ArrayList<LineItem> items;

    public Cart() {
        items = new ArrayList<LineItem>();
    }
    
    public Cart(ArrayList<LineItem> items) {
    	this.items = items;
    }

    public ArrayList<LineItem> getItems() {
        return items;
    }

    public int getCount() {
        return items.size();
    }

    public void addItem(LineItem item) {
        int code = item.getProduct().getId();
        int quantity = item.getQty();
        for (int i = 0; i < items.size(); i++) {
            LineItem lineItem = items.get(i);
            if (lineItem.getProduct().getId() == code) {
                lineItem.setQty(quantity);
                return;
            }
        }
        items.add(item);
    }

    public void removeItem(LineItem item) {
        int code = item.getProduct().getId();
        for (int i = 0; i < items.size(); i++) {
            LineItem lineItem = items.get(i);
            if (lineItem.getProduct().getId() == code) {
                items.remove(i);
                return;
            }
        }
    }
}
