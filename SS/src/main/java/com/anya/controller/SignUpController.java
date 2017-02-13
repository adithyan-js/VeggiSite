package com.anya.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import com.anya.model.SignUp;
import com.anya.service.SignUpService;

@Controller
public class SignUpController {
	@Autowired
	private SignUpService signupService;
	
	public SignUpController()
	{
		System.out.println("Creating instance for SignUpController");
	}
	@RequestMapping("/SignUp")
	public ModelAndView gotoProduct(@ModelAttribute("supfrm")SignUp supfrm) 
	{
		  
		  return new ModelAndView("SignUp");
	}

	@RequestMapping(value = "saveSignUp", method = RequestMethod.POST)
	public ModelAndView saveProduct(@ModelAttribute("supfrm")SignUp supfrm)
	{
		
		signupService.insertRow(supfrm);
		List<SignUp> ls=signupService.getList();
		return new ModelAndView("SignUp","signupList",ls);
	}
	

	@RequestMapping("/listSignup")
	public ModelAndView listallsignup()
	{
		List<SignUp> ls=signupService.getList();
		return new ModelAndView("listSignUp","signupList",ls);
	}
	
	@RequestMapping("deleteSignUp")
	public ModelAndView deletesignup(@RequestParam int id)
	{
		
		signupService.deleteRow(id);
		return new ModelAndView("redirect:listSignUp");
	}
	
	@RequestMapping("/editSignUp")
	public ModelAndView editsignup(@ModelAttribute("supfrm")SignUp supfrm,@RequestParam int id)
	{
		supfrm=signupService.getRowById(id);
		ModelAndView mv=new ModelAndView("editSignUp","sign",supfrm);
		return mv;
		
	}
	

	@RequestMapping(value="updateSignUp",method=RequestMethod.POST)
	public ModelAndView updateproduct(@ModelAttribute("supfrm")SignUp supfrm)
	{
		signupService.updateRow(supfrm);
		return new ModelAndView("redirect:listSignUp");
		
	}

	
}
