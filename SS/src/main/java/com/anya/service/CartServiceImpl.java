package com.anya.service;

import org.springframework.beans.factory.annotation.Autowired;

import com.anya.dao.CartDao;
import com.anya.model.Cart;

public class CartServiceImpl implements CartService {
	@Autowired
	private CartDao cartDao;
	public Cart getCart(int cartId) {
	return cartDao.getCart(cartId);
	}

}
