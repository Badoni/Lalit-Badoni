package com.niit.Front.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.shopingbackend.backproject.DAO.UserDAO;
import com.niit.shopingbackend.backproject.model.User;

@Controller
public class LoginController 
{

	@Autowired
	UserDAO userDAO;
	
	@RequestMapping("/login")
	public String sign( Model model)
	{
		 model.addAttribute("userList",userDAO.getAllUser());
		model.addAttribute("User", new User());
		return "Login";
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
	return "redirect:/Login";
	}
	
}
