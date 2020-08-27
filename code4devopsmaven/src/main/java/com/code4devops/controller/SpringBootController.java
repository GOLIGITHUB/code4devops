	package com.code4devops.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "spring-boot")
public class SpringBootController {
	
	@RequestMapping(value ="/spring-boot-overview" , method=RequestMethod.GET)	
	public String getSpringBootOverrview() {
	return "spring-boot-overview";	
	}

	@RequestMapping(value ="/spring-Boot-Dev-Tools" , method=RequestMethod.GET)	
	public String getSpringBootDevTools() {
	return "spring-Boot-Dev-Tools";	
	}
	
	@RequestMapping(value ="/spring-boot-actuator" , method=RequestMethod.GET)	
	public String getSpringBootActuator() {
	return "spring-boot-actuator";	
	}
	
	
	@RequestMapping(value ="/spring-boot-apps-cmd" , method=RequestMethod.GET)	
	public String getSpringBootAppsCmd() {
	return "spring-boot-apps-cmd";	
	}
	
	
	@RequestMapping(value ="/spring-boot-properties" , method=RequestMethod.GET)	
	public String getSpringBootProperties() {
	return "spring-boot-properties";	
	}
	
	
	@RequestMapping(value ="/spring-boot-project-structure" , method=RequestMethod.GET)	
	public String getSpringBootProjectStructure() {
	return "spring-boot-project-structure";	
	}
	
	@RequestMapping(value ="/spring-boot-security" , method=RequestMethod.GET)	
	public String getSpringBootSecurity() {
	return "spring-boot-security";	
	}
	
	
	@RequestMapping(value ="/spring-boot-maven-dependencies" , method=RequestMethod.GET)	
	public String getSpringBootMavenDependencies() {
	return "spring-boot-maven-dependencies";	
	}
	
	
	@RequestMapping(value ="/spring-boot-with-spring-tool-suite-ide" , method=RequestMethod.GET)	
	public String getSpringBootWithSpringToolSuiteIde() {
	return "spring-boot-with-spring-tool-suite-ide";	
	}
	
	
	@RequestMapping(value ="/spring-boot-query" , method=RequestMethod.GET)	
	public String getSpringBootQuery() {
	return "spring-boot-query";	
	}
}
