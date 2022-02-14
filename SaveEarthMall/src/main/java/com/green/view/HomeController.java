package com.green.view;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {
//	@Autowired
//	private ProductService productService;
	
	@RequestMapping(value="/index", method=RequestMethod.GET)
	public String home() {	// TODO: Model 넣어야 됨.
		
		return "index";
	}
}
