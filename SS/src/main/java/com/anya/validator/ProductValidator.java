package com.anya.validator;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.anya.model.Product;


@Component
public class ProductValidator implements Validator 
{

	public boolean supports(Class clazz)
	{
		return Product.class.isAssignableFrom(clazz);
	}
	
	public void validate(Object target, Errors errors)
	{
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "name", "error.name","Product Name Is Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "description", "error.description","Description Is Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "price", "error.price","Price Field Cannot Be Empty");
	}

	
}

	


