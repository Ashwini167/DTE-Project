package com.niit.dao;

import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import com.niit.model.Category;

@Repository("categoryDAO")
public class CategoryDAOImpl implements CategoryDAO {
	@Autowired
	SessionFactory sessionFactory;	
	
	@Transactional
	@Override
	public boolean addCategory(Category category) 
	{	
		try {
			sessionFactory.getCurrentSession().save(category);
			return true;
		}
		catch(Exception e) {
			System.out.println("There is an exception here! The details are: \n =================================");
			System.out.println(e);
			return false;
		}
	}
	
	@Override
	public Category getCategory(int categoryId) {
		Session session=sessionFactory.openSession();
		Category category=(Category)session.get(Category.class,categoryId);
		session.close();
		return category;
	}

	@Transactional
	@Override
	public boolean deleteCategory(Category category) {
		try {
			sessionFactory.getCurrentSession().delete(category);
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
	public boolean updateCategory(Category category) {
		try {
			sessionFactory.getCurrentSession().update(category);
			return true;
		}
		catch(Exception e) {
			System.out.println("There is an exception here! The details are: \n =================================");
			System.out.println(e);
			return false;
		}
	}

	@Override
	public List<Category> listCategory() {
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from Category");
		List<Category> listCategories = (List<Category>)query.list();
		return listCategories;
	}	
}