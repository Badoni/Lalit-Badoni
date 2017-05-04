package com.niit.Front.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.shopingbackend.backproject.DAO.UserDAO;
import com.niit.shopingbackend.backproject.model.Category;
import com.niit.shopingbackend.backproject.model.Product;
import com.niit.shopingbackend.backproject.model.User;

@Controller
public class HomeController
{

	@Autowired
	UserDAO userDAO;
	
	@RequestMapping("/")
	public String home()
	{
		return "index";
	}
	
	
	
	@RequestMapping("/signup")
	public String sign( Model model)
	{
		model.addAttribute("User", new User());
		return "signup";
	}
	
	
	@RequestMapping("/addUser")
	public String addUser(@ModelAttribute("User") User u, Model model)
	{
	if(userDAO.addUser(u))
	{
		model.addAttribute("msg", "The Data Save in Database");
	}
	else
	{
		model.addAttribute("msg","not correct");
	}
	return "signup";
	}
			
	
	
	
	@RequestMapping("/pro")
	public String pro(Model model)
	{
		model.addAttribute("Product",new Product());
		return "product";
	}
	
	
	@RequestMapping("/addPro")
	public String addPro(@ModelAttribute("Product") Product p, Model model)
	{
		if(userDAO.addPro(p))
		{
			model.addAttribute("msg", "The Product Details add in Product Data");
		}
		else
		{
			model.addAttribute("msg","Sorry Data Is not Store");
		}
		return "product";
	}
	
	
	@RequestMapping("/cat")
	public String cat(Model model)
	{
		model.addAttribute("Category",new Category());
		return "category";
	}
	
	@RequestMapping("/addCat")
	public String addCat(@ModelAttribute("Category") Category c, Model model )
	{
		if(userDAO.addCat(c))
		{
		model.addAttribute("msg","The Category Details Add In Category DataBase List");	
		}
		else
		{
			model.addAttribute("msg","The Data is not save in database");
		}
		return "category";
	}
}
