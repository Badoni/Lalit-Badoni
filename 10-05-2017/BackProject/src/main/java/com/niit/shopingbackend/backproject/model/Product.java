package com.niit.shopingbackend.backproject.model;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Transient;

import org.springframework.web.multipart.MultipartFile;

@Entity
public class Product 
{

	@Id
	private String productId;
	
	@Column(unique=true)
	private String productname;
	private String productcity;
	
	@Transient
	private MultipartFile image;
	
	
	private String supplierId;
	@ManyToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="supplierId",insertable=false,nullable=false,updatable=false)
	Supplier supplier;

	
	private String categoryId;
	@ManyToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="categoryId",insertable=false,nullable=false,updatable=false)
	Category category;

	
	
	public String getProductId() {
		return productId;
	}
	public void setProductId(String productId) {
		this.productId = productId;
	}
	public String getProductname() {
		return productname;
	}
	public void setProductname(String productname) {
		this.productname = productname;
	}
	public String getProductcity() {
		return productcity;
	}
	public void setProductcity(String productcity) {
		this.productcity = productcity;
	}
	public MultipartFile getImage() {
		return image;
	}
	public void setImage(MultipartFile image) {
		this.image = image;
	}
	public String getSupplierId() {
		return supplierId;
	}
	public void setSupplierId(String supplierId) {
		this.supplierId = supplierId;
	}
	public Supplier getSupplier() {
		return supplier;
	}
	public void setSupplier(Supplier supplier) {
		this.supplier = supplier;
	}
	public String getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(String categoryId) {
		this.categoryId = categoryId;
	}
	public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
	}
	
	
	
}
