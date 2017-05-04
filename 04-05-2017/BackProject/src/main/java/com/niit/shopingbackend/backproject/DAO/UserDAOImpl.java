package com.niit.shopingbackend.backproject.DAO;




import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.shopingbackend.backproject.model.Category;
import com.niit.shopingbackend.backproject.model.Product;
import com.niit.shopingbackend.backproject.model.User;

@Repository("userDAO")
public class UserDAOImpl implements UserDAO
{
	
	@Autowired
	SessionFactory sessionFactory;

    
	
	@Transactional
	public boolean addUser(User u)
	{
		Session ss=sessionFactory.getCurrentSession();
		u.setUserid(u.getUsername());
		try
		{
			ss.persist(u);
			return true;
		}
		catch (Exception e)
		{
			
	   e.printStackTrace();	
		return false;
	}
		
	
	}
     
	@Transactional
	public boolean addPro(Product p)
	{
	
		Session s=sessionFactory.getCurrentSession();
	    p.setPid(p.getCid());
	    try
	    {
	    	s.persist(p);
	    	return true;
	    }
		
	    catch(Exception e)
	    {
	    	e.printStackTrace();

			return false;
	    }
	}

	
	
	@Transactional
	public boolean addCat(Category c) 
	{
	
		Session sss=sessionFactory.getCurrentSession();
		
		c.setCname(c.getCid());
		try
		{
	    sss.persist(c);
	    return true;
		}
		
		catch(Exception e)
		{
            e.printStackTrace();
			return false;

		}
	}
	
	
	
}
