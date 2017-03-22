package com.anya.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HomeController {

	public HomeController() {
		// super();
		// TODO Auto-generated constructor stub
		System.out.println("inside controller");
	}

	@RequestMapping("/")
	public String gotoHome() {
		return "index";
	}

	// @RequestMapping("/Header")
	// public String gotoHome1()
	// {
	// return "Header";
	// }
	// @RequestMapping("/Footer")
	// public String gotoHome2()
	// {
	// return "Footer";
	// }
	@RequestMapping("/index")
	public String gotoHome3() {
		return "index";
	}

	@RequestMapping("/AboutUs")
	public String gotoHome4() {
		return "AboutUs";
	}

	@RequestMapping("/Test")
	public String gotoLogin() {
		return "Test";
	}
	
	@RequestMapping("/Login")
	public String signin(@RequestParam(value="error",required=false) String error,
			@RequestParam(value="logout",required=false) String logout,
			Model model){
		if(error!=null)
			model.addAttribute("error","Invalid Username And Password");
		if(logout!=null)
			model.addAttribute("logout","Loggedout successfully..");
		return "Login";
	}


	@RequestMapping("/Signup")
	public String gotoSignUp() {
		return "SignUp";
	}
  
	@RequestMapping("/Shipping")
	public String gotoShipping() {
		return "Shipping";
	}

	@RequestMapping("/viewProducts")
	public String gotoViewProducts() {
		return "viewProducts";
	}

	@RequestMapping(value = "loginCk", method = RequestMethod.POST)
	public void validateLogin(HttpServletRequest request, HttpServletRequest response, ServletRequest req,
			ServletResponse res) throws ServletException, IOException {
		String u = request.getParameter("uname");
		String p = request.getParameter("passwd");
		LoginCredential obj = new LoginCredential();
		obj.setUname(u);
		obj.setPasswd(p);

		if (obj.checkLogin()) {
			RequestDispatcher dispatch = request.getRequestDispatcher("index");
			dispatch.forward(req, res);
		}

	}
}
