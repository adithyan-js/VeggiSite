package com.anya.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.anya.dao.SignupDao;
import com.anya.model.Signup;
@Service("SignupService")

public class SignupServiceImpl implements SignupService {
	
	@Autowired
	private SignupDao signupDao;

	@Transactional(propagation=Propagation.SUPPORTS)
	public int insertRow(Signup sup) {
		// TODO Auto-generated method stub
		return signupDao.insertRow(sup);
	}

	@Transactional(propagation=Propagation.SUPPORTS)
	public List<Signup> getList() {
		// TODO Auto-generated method stub
		return signupDao.getList();
	}

	@Transactional(propagation=Propagation.SUPPORTS)
	public Signup getRowById(int id) {
		// TODO Auto-generated method stub
		return signupDao.getRowById(id);
	}

	@Transactional(propagation=Propagation.SUPPORTS)
	public int updateRow(Signup sup) {
		// TODO Auto-generated method stub
		return signupDao.updateRow(sup);
	}

	@Transactional(propagation=Propagation.SUPPORTS)
	public int deleteRow(int id) {
		// TODO Auto-generated method stub
		return signupDao.deleteRow(id);
	}

	@Transactional(propagation=Propagation.SUPPORTS)
	public Signup getSignupByEmail(String email) {
		// TODO Auto-generated method stub
		return signupDao.getSignupByEmail(email);
	}

	/*@Transactional(propagation=Propagation.SUPPORTS)
	public void saveCustomer(Signup signup) {
		// TODO Auto-generated method stub
		signupDao.saveCustomer(signup);
	}*/

}
