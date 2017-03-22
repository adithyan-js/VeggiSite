package com.anya.model;

import java.io.Serializable;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
public class Cart implements Serializable{
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
private int cartid;
private double grandTotal;
@OneToOne
@JsonIgnore
private Signup signup;
@OneToMany(mappedBy="cart",cascade=CascadeType.ALL,fetch=FetchType.EAGER)
private List<CartItem> cartItems;

public int getCartid() {
	return cartid;
}
public void setCartid(int cartid) {
	this.cartid = cartid;
}
public double getGrandTotal() {
	return grandTotal;
}
public void setGrandTotal(double grandTotal) {
	this.grandTotal = grandTotal;
}

public List<CartItem> getCartItems() {
	return cartItems;
}
public void setCartItems(List<CartItem> cartItems) {
	this.cartItems = cartItems;
}
public Signup getSignup() {
	return signup;
}
public void setSignup(Signup signup) {
	this.signup = signup;
}

}