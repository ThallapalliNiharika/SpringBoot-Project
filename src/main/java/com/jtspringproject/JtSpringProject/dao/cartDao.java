package com.jtspringproject.JtSpringProject.dao;
import java.util.List;

import com.jtspringproject.JtSpringProject.models.Cart; 
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
public class cartDao {
    @Autowired
    private SessionFactory sessionFactory;

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    @Transactional
    public Cart addCartItem(Cart cartItem) {
        this.sessionFactory.getCurrentSession().save(cartItem);
        return cartItem;
    }

    @Transactional
    public List<Cart> getCartItemsByUserId(int userId) {
        String hql = "FROM Cart c WHERE c.userId = :userId";
        Query<Cart> query = this.sessionFactory.getCurrentSession().createQuery(hql, Cart.class);
        query.setParameter("userId", userId);
        return query.list();
    }

    @Transactional
    public void updateCartItem(Cart cartItem) {
        this.sessionFactory.getCurrentSession().update(cartItem);
    }

    @Transactional
    public void deleteCartItem(Cart cartItem) {
        this.sessionFactory.getCurrentSession().delete(cartItem);
    }

    @Transactional
    public Cart getCartItem(int id) {
        return this.sessionFactory.getCurrentSession().get(Cart.class, id);
    }

    @Transactional
    public List<Cart> getCartItems() {
        Query<Cart> query = this.sessionFactory.getCurrentSession().createQuery("FROM Cart", Cart.class);
        return query.list();
    }

}