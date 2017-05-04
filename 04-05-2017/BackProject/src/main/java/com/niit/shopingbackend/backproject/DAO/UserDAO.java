package com.niit.shopingbackend.backproject.DAO;

import com.niit.shopingbackend.backproject.model.Category;
import com.niit.shopingbackend.backproject.model.Product;
import com.niit.shopingbackend.backproject.model.User;

public interface UserDAO {

	boolean addUser(User u);
	boolean addPro (Product p);
	boolean addCat(Category c);
}
