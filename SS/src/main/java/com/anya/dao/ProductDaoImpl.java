package com.anya.dao;

import java.io.Serializable;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.anya.model.Category;
import com.anya.model.Product;

@Repository("productDao")
public class ProductDaoImpl implements ProductDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Transactional(propagation=Propagation.SUPPORTS)
	public int insertRow(Product prd) {
		Session session = sessionFactory.openSession();
		  Transaction tx = session.beginTransaction();
		  Category c=new Category();
		  session.saveOrUpdate(prd);
		  session.flush();
		  tx.commit();
		  
		  Serializable id = session.getIdentifier(prd);
		  session.close();
		  return (Integer) id;
	}

	@Transactional(propagation=Propagation.SUPPORTS)
	public List<Product> getList() {
		Session session = sessionFactory.openSession();
		  //@SuppressWarnings("unchecked")
		  List<Product> productList = session.createQuery("from Product").list();
		  session.close();
		  return productList;
	}

	@Transactional(propagation=Propagation.SUPPORTS)
	public Product getRowById(int id) {
		 Session session = sessionFactory.openSession();
		  Product p = (Product) session.load(Product.class, id);
		  return p;
	}

	@Transactional(propagation=Propagation.SUPPORTS)
	public int updateRow(Product prd) {
		 Session session = sessionFactory.openSession();
		  Transaction tx = session.beginTransaction();
		  session.saveOrUpdate(prd);
		  session.flush();
		  tx.commit();
		  
		  Serializable id = session.getIdentifier(prd);
		  session.close();
		  return (Integer) id;
	}

	@Transactional(propagation=Propagation.SUPPORTS)
	public int deleteRow(int id) {
		Session session = sessionFactory.openSession();
		  Transaction tx = session.beginTransaction();
		  Product p = (Product) session.load(Product.class, id);
		  session.delete(p);
		  session.flush();
		  tx.commit();
		 
		  Serializable ids = session.getIdentifier(p);
		  session.close();
		  return (Integer) ids;
	}

	@Transactional(propagation=Propagation.SUPPORTS)
	public Product getProductById(int productId) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.openSession();
		Product product=(Product)session.get(Product.class,productId);
		session.close();
		return product;
	}
	
	
}
