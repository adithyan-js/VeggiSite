package com.anya.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.anya.model.Suppliers;
@Repository
public class SuppliersDaoImpl implements SuppliersDao {
	@Autowired
	private SessionFactory sessionFactory;
		
		
		public List<Suppliers> getSuppliers() {
			Session session=sessionFactory.openSession();
			Query query = session.createQuery("from Suppliers");
			List<Suppliers> suppliers=query.list();
			session.close();
			return suppliers;
		}
}
