package com.anya.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
@Entity
public class Authorities 
{
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
private int id;
	@Column(unique=true)
private String emailid;
private String role;
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}

public String getEmailid() {
	return emailid;
}
public void setEmailid(String emailid) {
	this.emailid = emailid;
}
public String getRole() {
	return role;
}
public void setRole(String role) {
	this.role = role;
}

}
