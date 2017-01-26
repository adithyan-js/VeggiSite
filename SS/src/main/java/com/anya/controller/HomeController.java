package com.anya.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

	public HomeController() {
		//super();
		// TODO Auto-generated constructor stub
	
		
		
		System.out.println("inside controller");
	}
@RequestMapping("/")
	public String gotoHome()
	{
		return "index";
	}
	
//@RequestMapping("/Header")
//public String gotoHome1()
//{
//	return "Header";
//}
//@RequestMapping("/Footer")
//public String gotoHome2()
//{
//	return "Footer";
//}
@RequestMapping("/index")
public String gotoHome3()
{
	return "index";
}
@RequestMapping("/AboutUs")
public String gotoHome4()
{
	return "AboutUs";
}
}
