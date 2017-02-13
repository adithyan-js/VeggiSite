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

import com.anya.model.Product;
import com.anya.model.SignUp;
@Repository("SignUpDao")
public class SignUpDaoImpl implements SignUpDao {
	@Autowired
	private SessionFactory sessionFactory;
	
	@Transactional(propagation=Propagation.SUPPORTS)
	public int insertRow(SignUp sup) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		  Transaction tx = session.beginTransaction();
		  session.saveOrUpdate(sup);
		  session.flush();
		  tx.commit();
		  
		  Serializable id = session.getIdentifier(sup);
		  session.close();
		  return (Integer) id;
	}

	@Transactional(propagation=Propagation.SUPPORTS)
	public List<SignUp> getList() {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		  //@SuppressWarnings("unchecked")
		  List<SignUp> signupList = session.createQuery("from SignUp").list();
		  session.close();
		  return signupList;
	}

	@Transactional(propagation=Propagation.SUPPORTS)
	public SignUp getRowById(int id) {
		// TODO Auto-generated method stub
		 Session session = sessionFactory.openSession();
		  SignUp s = (SignUp) session.load(SignUp.class, id);
		  return s;

	}

	@Transactional(propagation=Propagation.SUPPORTS)
	public int updateRow(SignUp sup) {
		// TODO Auto-generated method stub
		 Session session = sessionFactory.openSession();
		  Transaction tx = session.beginTransaction();
		  session.saveOrUpdate(sup);
		  session.flush();
		  tx.commit();
		  
		  Serializable id = session.getIdentifier(sup);
		  session.close();
		  return (Integer) id;

	}

	@Transactional(propagation=Propagation.SUPPORTS)
	public int deleteRow(int id) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		  Transaction tx = session.beginTransaction();
		  SignUp s = (SignUp) session.load(SignUp.class, id);
		  session.delete(s);
		  session.flush();
		  tx.commit();
		 
		  Serializable ids = session.getIdentifier(s);
		  session.close();
		  return (Integer) ids;

	}

}
