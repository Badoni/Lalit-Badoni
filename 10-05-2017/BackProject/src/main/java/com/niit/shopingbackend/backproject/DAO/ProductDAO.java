package com.niit.shopingbackend.backproject.DAO;

import java.util.List;

import com.niit.shopingbackend.backproject.model.Product;



public interface ProductDAO 
{

	boolean addPro(Product p);
	
	List<Product>getAllProduct();

	public boolean update(Product p);
	
	public boolean deletePro(String id);
	
	public Product getProductId(String id);
	
}
