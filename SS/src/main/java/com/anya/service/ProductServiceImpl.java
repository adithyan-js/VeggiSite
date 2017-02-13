package com.anya.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.anya.dao.ProductDao;
import com.anya.model.Product;

@Service("productService")

public class ProductServiceImpl implements ProductService {
	
	@Autowired
	private ProductDao productDao;

	@Transactional(propagation=Propagation.SUPPORTS)
	public int insertRow(Product prd) {
		// TODO Auto-generated method stub
		return productDao.insertRow(prd);
	}

	@Transactional(propagation=Propagation.SUPPORTS)
	public List getList() {
		// TODO Auto-generated method stub
		return productDao.getList();
	}

	@Transactional(propagation=Propagation.SUPPORTS)
	public Product getRowById(int id) {
		// TODO Auto-generated method stub
		return productDao.getRowById(id);
	}

	@Transactional(propagation=Propagation.SUPPORTS)
	public int updateRow(Product prd) {
		// TODO Auto-generated method stub
		return productDao.updateRow(prd);
	}

	@Transactional(propagation=Propagation.SUPPORTS)
	public int deleteRow(int id) {
		// TODO Auto-generated method stub
		return productDao.deleteRow(id);
	}
	
	
	

}
