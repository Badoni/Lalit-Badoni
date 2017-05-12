package com.niit.Front.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.shopingbackend.backproject.DAO.CategoryDAO;

@Controller
public class HomeController
{	
	@Autowired
	HttpSession httpSession;

@Autowired
CategoryDAO categoryDAO;
	//-----------------------Index-----------------//
	@RequestMapping(value={"/","/index"})
	public String home()
	{
		httpSession.setAttribute("categoryList", categoryDAO.getAllCategory());
		return "index";
	}
	
	
	

	
}
