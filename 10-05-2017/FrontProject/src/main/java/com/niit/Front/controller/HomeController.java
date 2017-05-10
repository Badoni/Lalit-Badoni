package com.niit.Front.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController
{
	//-----------------------Index-----------------//
	@RequestMapping("/")
	public String home()
	{
		return "index";
	}
	
	@RequestMapping("/head")
	public String header()
	{
		return "Header";
	}

	
}
