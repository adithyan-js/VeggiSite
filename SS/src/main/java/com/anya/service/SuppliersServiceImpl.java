package com.anya.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.anya.dao.SuppliersDao;
import com.anya.model.Suppliers;
@Service
public class SuppliersServiceImpl implements SuppliersService {
	@Autowired
	private SuppliersDao suppliersDao;
  public List<Suppliers> getSuppliers()
  {
	 return suppliersDao.getSuppliers(); 
  }
}
