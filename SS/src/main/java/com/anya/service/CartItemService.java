package com.anya.service;

import com.anya.model.Cart;
import com.anya.model.CartItem;

public interface CartItemService {
	void addCartItem(CartItem cartItem);
	CartItem getCartItem(int cartItemId);
	void removeCartItem(CartItem cartItem);
	void removeAllCartItems(Cart cart);
}
