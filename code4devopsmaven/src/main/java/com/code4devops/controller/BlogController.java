package com.code4devops.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.code4devops.entity.CreateBlog;
import com.code4devops.service.CreateBlogService;

@Controller
@RequestMapping("blog")
public class BlogController {
	
	
	@Autowired
	private CreateBlogService createBlogService;
	
	
	@RequestMapping(value = "/blog-home-page", method = RequestMethod.GET)	
	public String getLinuxHomePage(Model model) {
		List<CreateBlog> list = createBlogService.getListOfBlog();
		model.addAttribute("list", list);
		return "blog-home-page";
	}
	
	
	@RequestMapping(value = "/spring-mvc-using-fully-java-based-configuration", method = RequestMethod.GET)	
	public String springmvcusingfullyjavabasedconfiguration() {
		return "spring-mvc-using-fully-java-based-configuration";
	}
	
	@RequestMapping(value = "/spring-mvc-using-fully-XML-based-configuration", method = RequestMethod.GET)	
	public String springmvcusingfullyXMLbasedconfiguration() {
		return "spring-mvc-using-fully-XML-based-configuration";
	}
	
	
	@RequestMapping(value = "/spring-boot-rest-api-with-hibernate-example", method = RequestMethod.GET)	
	public String springbootrestapiwithhibernateexample() {
		return "spring-boot-rest-api-with-hibernate-example";
	}
	
	@RequestMapping(value = "/spring-boot-crud-example-with-jpa-mysql-thymeleaf", method = RequestMethod.GET)	
	public String springbootcrudexamplewithjpamysqlthymeleaf() {
		return "spring-boot-crud-example-with-jpa-mysql-thymeleaf";
	}
	
	@RequestMapping(value = "/python-crud-operation-mariadb-in-linux", method = RequestMethod.GET)	
	public String pythoncrudoperationmariadbinlinux() {
		return "python-crud-operation-mariadb-in-linux";
	}
	
	@RequestMapping(value = "/hibernate-one-to-one-unidirectional-mapping-annotation-example", method = RequestMethod.GET)	
	public String hibernateonetooneunidirectionalmappingannotationexample() {
		return "hibernate-one-to-one-unidirectional-mapping-annotation-example";
	}
	
	@RequestMapping(value = "/hibernate-one-to-one-bidirectional-mapping-annotation-example", method = RequestMethod.GET)	
	public String hibernateonetoonebidirectionalmappingannotationexample() {
		return "hibernate-one-to-one-bidirectional-mapping-annotation-example";
	}
	
	@RequestMapping(value = "/hibernate-one-to-many-bidirectional-mapping-annotation-example", method = RequestMethod.GET)	
	public String hibernateonetomanybidirectionalmappingannotationexample() {
		return "hibernate-one-to-many-bidirectional-mapping-annotation-example";
	}
	
	@RequestMapping(value = "/hibernate-lazy-loading-and-eager-loading-annotation-example", method = RequestMethod.GET)	
	public String hibernatelazyloadingandeagerloadingannotationexample() {
		return "hibernate-lazy-loading-and-eager-loading-annotation-example";
	}
	
}
