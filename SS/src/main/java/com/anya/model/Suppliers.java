package com.anya.model;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class Suppliers implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = -723583058586873479L;
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
private int id;
private String suppliersDetails;
@OneToMany(mappedBy="suppliers")
private List<Product> products;


public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getSuppliersDetails() {
	return suppliersDetails;
}
public void setCategoryDetails(String suppliersDetails) {
	this.suppliersDetails = suppliersDetails;
}
public List<Product> getProducts() {
	return products;
}
public void setProducts(List<Product> products) {
	this.products = products;
}

public String toString() {
	return suppliersDetails;
}

}