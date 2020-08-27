package com.code4devops.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("python")
public class PythonController {
	
	@RequestMapping( value = "/python-home-page", method =  RequestMethod.GET)
	public String getPythonHomePage(){
	return "python-home-page";
	}
	
	@RequestMapping( value = "/python-basic", method =  RequestMethod.GET)
	public String getPythonBasic(){
	return "python-home-page";
	}
	
	
	@RequestMapping( value = "/python-keyword", method =  RequestMethod.GET)
	public String getPythonKeyword(){
	return "python-keyword";
	}
	
	
	
	@RequestMapping( value = "/python-identifier", method =  RequestMethod.GET)
	public String getPythonIdentifier(){
	return "python-identifier";
	}
	
	
	@RequestMapping( value = "/python-data-types", method =  RequestMethod.GET)
	public String getPythonDataTypes(){
	return "python-data-types";
	}
	
	@RequestMapping( value = "/python-variable", method =  RequestMethod.GET)
	public String getPythonVariable(){
	return "python-variable";
	}
	
	@RequestMapping( value = "/python-operators", method =  RequestMethod.GET)
	public String getPythonOperators(){
	return "python-operators";
	}
	
	@RequestMapping( value = "/python-control-statements", method =  RequestMethod.GET)
	public String getPythonControlStatements(){
	return "python-control-statements";
	}
	
	@RequestMapping( value = "/python-array", method =  RequestMethod.GET)
	public String getPythonArray(){
	return "python-array";
	}
	
	@RequestMapping( value = "/python-input-output", method =  RequestMethod.GET)
	public String getPythonInputOutput(){
	return "python-input-output";
	}
	
	@RequestMapping( value = "/python-list", method =  RequestMethod.GET)
	public String getPythonList(){
	return "python-list";
	}
	
	@RequestMapping( value = "/python-set", method =  RequestMethod.GET)
	public String getPythonSet(){
	return "python-set";
	}
	
	@RequestMapping( value = "/python-tuple", method =  RequestMethod.GET)
	public String getPythonTuple(){
	return "python-tuple";
	}
	
	@RequestMapping( value = "/python-dictionary", method =  RequestMethod.GET)
	public String getPythonDictionary(){
	return "python-dictionary";
	}
	
	@RequestMapping( value = "/python-function", method =  RequestMethod.GET)
	public String getPythonFunction(){
	return "python-function";
	}
	
	@RequestMapping( value = "/python-numbers-format", method =  RequestMethod.GET)
	public String getPythonNumbersFormat(){
	return "python-numbers-format";
	}
	
	@RequestMapping( value = "/python-class-and-object", method =  RequestMethod.GET)
	public String getPythonClassandObject(){
	return "python-class-and-object";
	}
	
	@RequestMapping( value = "/python-object-class", method =  RequestMethod.GET)
	public String getPythonObjectClass(){
	return "python-object-class";
	}
	
	@RequestMapping( value = "/python-method", method =  RequestMethod.GET)
	public String getPythonMethod(){
	return "python-method";
	}
	
	@RequestMapping( value = "/python-decorators", method =  RequestMethod.GET)
	public String getPythonDecorators(){
	return "python-decorators";
	}
	
	@RequestMapping( value = "/python-constructor", method =  RequestMethod.GET)
	public String getPythonConstructor(){
	return "python-constructor";
	}
	
	@RequestMapping( value = "/python-string", method =  RequestMethod.GET)
	public String getPythonString(){
	return "python-string";
	}
	
	@RequestMapping( value = "python-inheritance", method =  RequestMethod.GET)
	public String getPythonInheritance(){
	return "python-inheritance";
	}
	
	@RequestMapping( value = "python-super-keyword", method =  RequestMethod.GET)
	public String getPythonSuperKeyword(){
	return "python-super-keyword";
	}
	
	@RequestMapping( value = "python-polymorphism", method =  RequestMethod.GET)
	public String getpPythonPolymorphism(){
	return "python-polymorphism";
	}
	
	@RequestMapping( value = "python-encapsulation", method =  RequestMethod.GET)
	public String getPythonEncapsulation(){
	return "python-encapsulation";
	}
	
	@RequestMapping( value = "python-abstraction", method =  RequestMethod.GET)
	public String getPythonAbstraction(){
	return "python-abstraction";
	}
	
	@RequestMapping( value = "python-packages-modules", method =  RequestMethod.GET)
	public String getPythonPackagesModules(){
	return "python-packages-modules";
	}
	
	@RequestMapping( value = "python-exception-handling", method =  RequestMethod.GET)
	public String getPythonExceptionHandling(){
	return "python-exception-handling";
	}
	
	
	@RequestMapping( value = "python-regular-expressions", method =  RequestMethod.GET)
	public String getPythonRegularExpressions(){
	return "python-regular-expressions";
	}
	
	@RequestMapping( value = "python-database-connectivity", method =  RequestMethod.GET)
	public String getPythonDatabaseConnectivity(){
	return "python-database-connectivity";
	}
	
	@RequestMapping( value = "python-file-handling", method =  RequestMethod.GET)
	public String getPythonFileHandling(){
	return "python-file-handling";
	}
	
	@RequestMapping( value = "python-networking", method =  RequestMethod.GET)
	public String getPythonNetworking(){
	return "python-database-connectivity";
	}
	
	@RequestMapping( value = "python-multithreading", method =  RequestMethod.GET)
	public String getPythonMultithreading(){
	return "python-multithreading";
	}
	
	@RequestMapping( value = "python-dates", method =  RequestMethod.GET)
	public String getPythonDates(){
	return "python-dates";
	}
	
	@RequestMapping( value = "python-time", method =  RequestMethod.GET)
	public String getPythonTime(){
	return "python-time";
	}
	
	@RequestMapping( value = "python-boto3-aws", method =  RequestMethod.GET)
	public String getPythonBoto3aws(){
	return "python-boto3-aws";
	}
}
