package com.niit.dao;

import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import com.niit.model.CartItem;

@Repository("cartItemDAO")
public class CartItemDAOImpl implements CartItemDAO {
	@Autowired
	SessionFactory sessionFactory;
	
	@Transactional
	@Override
	public boolean addCartItem(CartItem cartItem) {
		try {
			sessionFactory.getCurrentSession().save(cartItem);
			return true;
		}
		catch(Exception e) {
			System.out.println("There is an exception here! The details are: \n =================================");
			System.out.println(e);
			return false;
		}	
	}
	
	@Transactional
	@Override
	public boolean deleteCartItem(CartItem cartItem) {
		try {
			sessionFactory.getCurrentSession().delete(cartItem);
			return true;
		}
		catch(Exception e) {
			System.out.println("There is an exception here! The details are: \n =================================");
			System.out.println(e);
			return false;
		}
	}
	
	@Transactional
	@Override
	public boolean updateCartItem(CartItem cartItem) {
		try {
			sessionFactory.getCurrentSession().update(cartItem);
			return true;
		}
		catch(Exception e) {
			System.out.println("There is an exception here! The details are: \n =================================");
			System.out.println(e);
			return false;
		}
	}

	@Override
	public CartItem getCartItem(int cartItemId) {
		try {
			Session session = sessionFactory.openSession();
			CartItem cartItem = (CartItem)session.get(CartItem.class, cartItemId);
			session.close();
			return cartItem;
		}
		catch(Exception e) {
			System.out.println("There is an exception here! The details are: \n =================================");
			System.out.println(e);
			return null;
		}
	}

	@Override
	public List<CartItem> listCartItems(String username) {
		try {
			Session session = sessionFactory.openSession();
			Query query = session.createQuery("from CartItem where username=:username and paymentStatus='NP'");
			query.setParameter("username", username);
			List<CartItem> listCartItem = (List<CartItem>)query.list();
			session.close();
			return listCartItem;
		} catch(Exception e) {
			System.out.println("There is an exception here! The details are: \n =================================");
			System.out.println(e);
			return null;
		}
	}

	@Override
	public List<CartItem> getCartItemByCartId(String username,int cartId) {
		try {
			Session session = sessionFactory.openSession();
			Query query = session.createQuery("from CartItem where username=:username and cartId:=cartId");
			query.setParameter("username", username);
			query.setParameter("cartId", cartId);
			List<CartItem> listCartItems = (List<CartItem>)query.list();
			session.close();
			return listCartItems;
		} catch(Exception e) {
			System.out.println("There is an exception here! The details are: \n =================================");
			System.out.println(e);
			return null;
		}
	}

}
