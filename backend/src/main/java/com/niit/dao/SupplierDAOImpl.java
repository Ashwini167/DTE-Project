package com.niit.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import com.niit.model.Supplier;

@Repository("supplierDAO")
public class SupplierDAOImpl implements SupplierDAO {
	@Autowired
	SessionFactory sessionFactory;
		
	@Transactional
	@Override
	public boolean addSupplier(Supplier supplier) {
		try {
			sessionFactory.getCurrentSession().save(supplier);
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
	public boolean updateSupplier(Supplier supplier) {
		try {
			sessionFactory.getCurrentSession().update(supplier);
			return true;
		}catch(Exception e) {
			System.out.println("There is an exception here! The details are: \n =================================");
			System.out.println(e);
			return false;
		}		
	}

	@Transactional
	@Override
	public boolean deleteSupplier(Supplier supplier) {
		try {
			sessionFactory.getCurrentSession().delete(supplier);
			return true;
		}catch(Exception e) {
			System.out.println("There is an exception here! The details are: \n =================================");
			System.out.println(e);
			return false;
		}
	}

	@Override
	public Supplier viewSupplier(int supplierId) {
		Session session = sessionFactory.openSession();
		Supplier supplier = (Supplier)session.get(Supplier.class,supplierId);
		session.close();
		return supplier;
	}

	@Override
	public List<Supplier> listSuppliers() {
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from Supplier");
		List<Supplier> listOfSuppliers = (List<Supplier>)query.list();
		return listOfSuppliers;
	}	
}
