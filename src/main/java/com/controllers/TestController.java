package com.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class TestController {
	
	@GetMapping("/pg1")
	public String ViewPage1()
	{
		return "Page1";  // here Page1 is, Page1.jsp
	}
	
	@GetMapping("/pg2")
	public String ViewPage2()
	{
		return "Page2";  // here Page2 is, Page2.jsp
	}


}
