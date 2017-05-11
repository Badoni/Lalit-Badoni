package com.niit.shopingbackend.backproject.DAO;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.shopingbackend.backproject.model.Category;
import com.niit.shopingbackend.backproject.model.Check;


@Repository("checkyDAO")
@Transactional
public class CheckDAOImpl implements CheckDAO 
{

	@Autowired
	private SessionFactory sessionFactory;
	
	
	public boolean addChe(Check c) {
		 Session session	=sessionFactory.getCurrentSession();
		   try
			{
			  
			   c.setCheckId(c.getCheckname());
				session.persist(c);
				return true;
			}
			catch (Exception e)
			{
				
		   e.printStackTrace();	
			return false;
		}
	}

	
	@SuppressWarnings("unchecked")
	public List<Check> getAllCheck() 
	{
		Session session=sessionFactory.getCurrentSession();
		Query qu=session.createQuery("from Check");
		List<Check> listcheck=(List<Check>)qu.list();
		return listcheck;
	}
	

	public boolean update(Check c) 
	{
		Session session=sessionFactory.getCurrentSession();
		try
		{
			session.update(c);
			return true;
		}
		catch (Exception e) 
		{
		e.printStackTrace();
		return false;
		}
	}

	public boolean deleteChe(String id)
	{
		Session ss=sessionFactory.getCurrentSession();
		ss.delete(getCheckId(id));
		return true;
	}

	public Check getCheckId(String id) {
		Session c=sessionFactory.getCurrentSession();
		return c.get(Check.class,id);
	}

}
