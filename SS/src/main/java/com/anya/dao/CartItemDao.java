package com.anya.dao;

import com.anya.model.Cart;
import com.anya.model.CartItem;

public interface CartItemDao {
	void addCartItem(CartItem cartItem);
	CartItem getCartItem(int cartItemId);
	void removeCartItem(CartItem cartItem);
	void removeAllCartItems(Cart cart);
}
