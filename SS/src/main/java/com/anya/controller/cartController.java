package com.anya.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.anya.model.Cart;
import com.anya.model.Signup;
import com.anya.service.CartService;
import com.anya.service.SignupService;

@Controller
public class cartController {
@Autowired
private SignupService signupService;
@Autowired
private CartService cartService;

@RequestMapping("/cart/getCartId")
public String getCartId(Model model){
User user=(User)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
String email=user.getUsername();

Signup signup=signupService.getSignupByEmail(email);
Cart cart=signup.getCart();
int cartId=cart.getCartid();
model.addAttribute("cartId",cartId);
return "cart";
}
@RequestMapping("/cart/getCart/{cartId}")
public @ResponseBody Cart getCart(@PathVariable int cartId){
Cart cart=cartService.getCart(cartId);
return cart;
}






}