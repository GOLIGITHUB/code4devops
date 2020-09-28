package com.code4devops.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="spring-mvc")
public class SpringMVCController {
	@RequestMapping(value ="/spring-mvc-form-tag" , method=RequestMethod.GET)	
	public String getSpringMvcFormTag() {
	return "spring-mvc-form-tag";	
	}
	
	@RequestMapping(value ="/spring-mvc-input-tag" , method=RequestMethod.GET)	
	public String getSpringMvcInputTag() {
	return "spring-mvc-input-tag";	
	}
	
	@RequestMapping(value ="/spring-mvc-checkbox-tag" , method=RequestMethod.GET)	
	public String getSpringMvcCheckboxTag() {
	return "spring-mvc-checkboxes-tag";	
	}
	
	@RequestMapping(value ="/spring-mvc-checkboxes-tag" , method=RequestMethod.GET)	
	public String getSpringMvcCheckboxesTag() {
	return "spring-mvc-checkboxes-tag";	
	}
	

	@RequestMapping(value ="/spring-mvc-radiobutton-tag" , method=RequestMethod.GET)	
	public String getSpringMvcRadiobuttonTag() {
	return "spring-mvc-radiobutton-tag";	
	}
	

	@RequestMapping(value ="/spring-mvc-radiobuttons-tag" , method=RequestMethod.GET)	
	public String getSpringMvcRadiobuttonsTag() {
	return "spring-mvc-radiobuttons-tag";	
	}
}
