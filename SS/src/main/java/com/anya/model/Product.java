package com.anya.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Transient;
import javax.validation.constraints.Min;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;

@Entity
public class Product implements Serializable {
	
	private static final long serialVersionUID = -723583058586873479L;
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
    private Integer productid;
	@NotEmpty(message="Product Name is mandatory")
	private String name;
	@NotEmpty(message="Description is Mandatory")
	private String description;
	@Min(value=10)
	private Double price;
	@ManyToOne
	@JoinColumn(name="cid")
	private Category category;
	@ManyToOne
	@JoinColumn(name="supplierid")
	private Suppliers suppliers;
	@Transient
	private MultipartFile image;
	public MultipartFile getImage() {
		return image;
	}
	public void setImage(MultipartFile image) {
		this.image = image;
	}
	public Suppliers getSuppliers() {
		return suppliers;
	}
	public void setSuppliers(Suppliers suppliers) {
		this.suppliers = suppliers;
	}
	public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
	}
	public Integer getProductid() {
		return productid;
	}
	public void setProductid(Integer productid) {
		this.productid = productid;
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
	public Double getPrice() {
		return price;
	}
	public void setPrice(Double price) {
		this.price = price;
	}
	
	
	
	
}
