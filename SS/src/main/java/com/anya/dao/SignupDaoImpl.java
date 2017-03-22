package com.anya.dao;

import java.io.Serializable;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.anya.model.Authorities;
import com.anya.model.Cart;
/*import com.hotspares.model.Authorities;*/
import com.anya.model.Signup;

@Repository("SignupDao")
public class SignupDaoImpl implements SignupDao {
	
	@Autowired
	private SessionFactory sessionFactory;

	@Transactional(propagation=Propagation.SUPPORTS)
	public int insertRow(Signup sup) {
		Session session = sessionFactory.openSession();
		  Transaction tx = session.beginTransaction();
		 
		  //setting the role for the new user
			String emailid=sup.getEmail();
			String role="ROLE_USER";
			
			Authorities authorities=new Authorities();
			
			authorities.setEmailid(emailid);
			authorities.setRole(role);
			//saving the authority of the user
			session.save(authorities);
			
			Cart cart=new Cart();
			sup.setCart(cart);
			cart.setSignup(sup);
			
			//setting the user active
			
			sup.setEnabled(true);
		//saving the new updates	
			session.saveOrUpdate(sup);	
		  session.flush();
		  tx.commit();
		  
		  Serializable id = session.getIdentifier(sup);
		  session.close();
		  return (Integer) id;
	}

	@Transactional(propagation=Propagation.SUPPORTS)
	public List<Signup> getList() {
		Session session = sessionFactory.openSession();
		  //@SuppressWarnings("unchecked")
		  List<Signup> signupList = session.createQuery("from Signup").list();
		  session.close();
		  return signupList;
	}

	@Transactional(propagation=Propagation.SUPPORTS)
	public Signup getRowById(int id) {
		Session session = sessionFactory.openSession();
		  Signup s = (Signup) session.load(Signup.class, id);
		  return s;
	}

	@Transactional(propagation=Propagation.SUPPORTS)
	public int updateRow(Signup sup) {
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
		Session session = sessionFactory.openSession();
		  Transaction tx = session.beginTransaction();
		  Signup s = (Signup) session.load(Signup.class, id);
		  session.delete(s);
		  session.flush();
		  tx.commit();
		 
		  Serializable ids = session.getIdentifier(s);
		  session.close();
		  return (Integer) ids;
	}

	@Transactional(propagation=Propagation.SUPPORTS)
	public Signup getSignupByEmail(String email) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.openSession();
		Query query=session.createQuery("from Signup where email=?");
		query.setString(0, email);
		Signup signup=(Signup)query.uniqueResult();
		session.close();
		signup.getEmail();
		return signup;
	}

	/*@Transactional(propagation=Propagation.SUPPORTS)
	public void saveCustomer(Signup signup) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.openSession();
		signup.getUsers().setEnabled(true);
		
		String username=signup.getUsers().getUsername();
		String role="ROLE_USER";
		
		Authorities authorities=new Authorities();
		
		authorities.setUsername(username);
		authorities.setRole(role);
		
		session.save(authorities);
		Cart cart=new Cart();
		signup.setCart(cart);
		cart.setSignup(signup);
		session.save(signup);
		session.flush();
		session.close();
	}*/

}

