package com.niit.shopingbackend.backproject.DAO;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.shopingbackend.backproject.model.Product;
import com.niit.shopingbackend.backproject.model.Supplier;


@Repository("productDAO")
@Transactional

public class ProductDAOImpl implements ProductDAO 
{

	@Autowired
	private SessionFactory sessionFactory;
	
	public boolean addPro(Product p) 
	{
		 Session session = sessionFactory.getCurrentSession();		
		  try
		  {
			 
			  p.setProductId(p.getProductname());
			  session.persist(p);
			  return true;
		  }
		  catch (Exception e) 
		  {
		  e.printStackTrace();
		  return false;
		  }	
	}

	@SuppressWarnings("unchecked")
	public List<Product> getAllProduct() 
	{
		Session session=sessionFactory.getCurrentSession();
		Query qu=session.createQuery("from Product");
		List<Product> listproduct=(List<Product>)qu.list();
		return listproduct;
	}

	public boolean update(Product p) 
	{
		Session ss=sessionFactory.getCurrentSession();
		try
		{
			ss.update(p);
			return true;
		}
		catch (Exception e) 
		{
		e.printStackTrace();
		return false;
		}
	}

	public boolean deletePro(String id) 
	{
		Session ss=sessionFactory.getCurrentSession();
		ss.delete(getProductId(id));
		return true;
	}

	public Product getProductId(String id) 
	{
		Session s=sessionFactory.getCurrentSession();
		return s.get(Product.class,id);
	}

}
