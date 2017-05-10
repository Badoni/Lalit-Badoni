package com.niit.Front.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import com.niit.shopingbackend.backproject.DAO.CheckDAO;
import com.niit.shopingbackend.backproject.model.Check;

@Controller
public class CheckController 
{

	@Autowired
	private CheckDAO checkDAO;
	
	@RequestMapping("/check")
	public String Check(Model model)
	{
		model.addAttribute("checkList",checkDAO.getAllCheck());
		model.addAttribute("Check", new Check());
		return "Check";
	}	
	
	
	@RequestMapping("/addChe")
	public String check (@ModelAttribute("Check") Check c, Model model)
	{
		if(c.getCheckId()==null || c.getCheckId().isEmpty())
		{
		if(checkDAO.addChe(c))
	{
		model.addAttribute("msg", "The Data Save in Database");
	}
	else
	{
		model.addAttribute("msg","not correct");
	}
		}
		else
		{
          checkDAO.update(c);
		}
	return "redirect:/Che";
	}

		
	@RequestMapping("/updateCheck/{checkId}")
	public String editCheck(@PathVariable("checkId") String checkId, Model model)
	{
		model.addAttribute("Check",checkDAO.getCheckId(checkId));
		model.addAttribute("checkList",checkDAO.getAllCheck());
		return "Check";
				
	}
	
	@RequestMapping("/deleteCheck/{checkId}")
	public String deleteCheck(@PathVariable("checkId") String checkId, Model model)
	{
		checkDAO.deleteChe(checkId);
		return "redirect:/Che";
	}
	
	
}
