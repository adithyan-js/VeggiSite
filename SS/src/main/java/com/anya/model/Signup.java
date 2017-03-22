
package com.anya.model;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.validation.constraints.Min;
import javax.validation.constraints.Size;

@Entity

public class Signup implements Serializable 
{
	private static final long serialVersionUID = -723583058586873479L;
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer signupid;
    private String uname;
	private int mno;
	private String email;
	//@NotNull(message="Please select a password")
	//@Length(min=5, max=10, message="Password should be between 5 - 10 charactes")
	private String password;
	private boolean enabled;
	
	public boolean isEnabled() {
		return enabled;
	}
	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}
	/*@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="users_id")
	private Users users;*/

	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="billingaddress_id")
	private BillingAddress billingAddress;

	

	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="cartid")
	private Cart cart;

	public Integer getSignupid() {
		return signupid;
	}
	public void setSignupid(Integer signupid) {
		this.signupid = signupid;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public int getMno() {
		return mno;
	}
	public void setMno(int mno) {
		this.mno = mno;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public BillingAddress getBillingAddress() {
		return billingAddress;
	}
	public void setBillingAddress(BillingAddress billingAddress) {
		this.billingAddress = billingAddress;
	}
	public Cart getCart() {
		return cart;
	}
	public void setCart(Cart cart) {
		this.cart = cart;
	}
	

	
}
