package com.anya.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.anya.dao.SignUpDao;
import com.anya.model.SignUp;
@Service("SignUpService")
public class SignUpServiceImpl implements SignUpService {

	@Autowired
	private SignUpDao signupDao;
	@Transactional(propagation=Propagation.SUPPORTS)
	public int insertRow(SignUp sup) {
		// TODO Auto-generated method stub
		return signupDao.insertRow(sup);
	}

	@Transactional(propagation=Propagation.SUPPORTS)
	public List<SignUp> getList() {
		// TODO Auto-generated method stub
		return signupDao.getList();
	}

	@Transactional(propagation=Propagation.SUPPORTS)
	public SignUp getRowById(int id) {
		// TODO Auto-generated method stub
		return signupDao.getRowById(id);
	}

	@Transactional(propagation=Propagation.SUPPORTS)
	public int updateRow(SignUp sup) {
		// TODO Auto-generated method stub
		return signupDao.updateRow(sup);
	}

	@Transactional(propagation=Propagation.SUPPORTS)
	public int deleteRow(int id) {
		// TODO Auto-generated method stub
		return signupDao.deleteRow(id);
	}

}
