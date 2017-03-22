package com.anya.controller;

import java.util.List;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.anya.model.Signup;
import com.anya.service.SignupService;

@Controller
public class SignupController 

{
	@Autowired
	private SignupService signupService;
	
	public SignupController()
	{
		System.out.println("creating instance for signupcontroller");
	}
	
	@RequestMapping("/signup")
	public ModelAndView gotoUser(@ModelAttribute("signupForm")Signup signupForm) 
	{
		  
		return new ModelAndView("signup");
	}
	
	@RequestMapping(value = "saveuser", method = RequestMethod.POST)
	public ModelAndView saveUser(@ModelAttribute("signupForm")Signup signupForm,Model model)
	{
		
		try{
			signupService.insertRow(signupForm);
		}
		catch(Exception e)
		{
			model.addAttribute("duplicateEmailid", "Email Id is Already exist.");
			model.addAttribute("signup", "User Registered Successfully");
			
			return new ModelAndView("signup");
		}
		
		/*List<Signup> ls=signupService.getList();
		return new ModelAndView("signup","signupList",ls);*/
		return new ModelAndView("Login");
	}
	
	@RequestMapping("/listUsers")
	public ModelAndView listallUsers()
	{
		List<Signup> ls=signupService.getList();
		return new ModelAndView("listUsers","signupList",ls);
	}
	
	@RequestMapping("deleteUser")
	public ModelAndView deleteuser(@RequestParam int id)
	{
		
		signupService.deleteRow(id);
		return new ModelAndView("redirect:listUsers");
	}
	
	@RequestMapping("/editUser")
	public ModelAndView edituser(@ModelAttribute("signupForm")Signup signupForm,@RequestParam int id)
	{
		signupForm=signupService.getRowById(id);
		ModelAndView mv=new ModelAndView("editUser","user",signupForm);
		return mv;
		
	}
	
	@RequestMapping(value="updateUser",method=RequestMethod.POST)
	public ModelAndView updateuser(@ModelAttribute("signupFOrm")Signup signupForm)
	{
		signupService.updateRow(signupForm);
		return new ModelAndView("redirect:listUsers");
		
	}

}
