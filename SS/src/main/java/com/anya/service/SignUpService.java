package com.anya.service;

import java.util.List;

import com.anya.model.SignUp;

public interface SignUpService {

	public int insertRow(SignUp sup);

	public List<SignUp> getList();

	 public SignUp getRowById(int id);

	 public int updateRow(SignUp sup);

	 public int deleteRow(int id);

}
