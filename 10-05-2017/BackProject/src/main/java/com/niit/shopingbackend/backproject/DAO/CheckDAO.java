package com.niit.shopingbackend.backproject.DAO;

import java.util.List;

import com.niit.shopingbackend.backproject.model.Check;

public interface CheckDAO 
{

	 boolean addChe(Check c);
		List<Check> getAllCheck();

		public boolean update(Check c);
		public boolean deleteChe(String id);
		public Check getCheckId(String id);
	
}
