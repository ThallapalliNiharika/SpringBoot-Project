package com.jtspringproject.JtSpringProject.services;

import com.jtspringproject.JtSpringProject.dao.cartDao;
import com.jtspringproject.JtSpringProject.models.Cart;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class cartService {
    @Autowired
    private cartDao cartDao;

    @Transactional
    public Cart addCartItem(Cart cartItem) {
        return cartDao.addCartItem(cartItem);
    }

    @Transactional
    public Cart getCartItem(int id) {
        return cartDao.getCartItem(id);
    }

    @Transactional
    public List<Cart> getCartItemsByUserId(int userId) {
        return cartDao.getCartItemsByUserId(userId);
    }

    @Transactional
    public void updateCartItem(Cart cartItem) {
        cartDao.updateCartItem(cartItem);
    }

    @Transactional
    public void deleteCartItem(Cart cartItem) {
        cartDao.deleteCartItem(cartItem);
    }

    @Transactional
    public List<Cart> getCartItems() {
        return cartDao.getCartItems();
    }
}