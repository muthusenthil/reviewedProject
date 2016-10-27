package com.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.model.ProductModel;
import com.service.ProductService;

@Controller
public class CategoryController {
	@Autowired(required=true)
	ProductService productservice;
	
	
@RequestMapping(value="user/onear")
	public String head(Map<String, Object> map)
	{
		ProductModel productmodelResult=new ProductModel();
		map.put("productModel",productmodelResult);
	    map.put("productmodelList", productservice.getALLonear());
	  System.out.println("hai");
		return "olycate";
	}
	@RequestMapping(value="user/overear")
	public String Crg(Map<String, Object> map)
	{
		ProductModel productmodelResult=new ProductModel();
		map.put("productModel",productmodelResult);
	    map.put("productmodelList", productservice.getALLoverear());
	  System.out.println(productmodelResult);
		return "olycate";
	}
	
	@RequestMapping(value="user/bluetooth")
	public String dey(Map<String, Object> map)
	{
		ProductModel productmodelResult=new ProductModel();
		map.put("productModel",productmodelResult);
	    map.put("productmodelList", productservice.getALLbluetooth());
	  System.out.println(productmodelResult);
		return "olycate";
	}
	
	@RequestMapping(value="user/earbud")
	public String poki(Map<String, Object> map)
	{
		ProductModel productmodelResult=new ProductModel();
		map.put("productModel",productmodelResult);
	    map.put("productmodelList", productservice.getALLearbud());
	  System.out.println(productmodelResult);
		return "olycate";
	}
	

}
