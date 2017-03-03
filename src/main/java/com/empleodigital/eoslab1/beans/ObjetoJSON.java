package com.empleodigital.eoslab1.beans;

import java.util.ArrayList;

public class ObjetoJSON {

	private ArrayList products;

	public ObjetoJSON(ArrayList products) {
		this.products = products;
	}

	public ArrayList getProducts() {
		return products;
	}

	public void setProducts(ArrayList products) {
		this.products = products;
	}

	@Override
	public String toString() {
		return "ObjetoJSON [products=" + products + "]";
	}
	
	
}
