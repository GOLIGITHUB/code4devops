package com.code4devops.controller;

import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseStatus;



@Controller
@RequestMapping("linux")
public class LinuxController {

	
	@RequestMapping(value = "/linux-home-page", method = RequestMethod.GET)	
	public String getLinuxHomePage() {
		return "linux-home-page";
	}
	
	
	@RequestMapping(value = "/linux-commands-basic-commands", method = RequestMethod.GET)	
	public String linuxCommandsBasicCommands() {
		return "linux-commands-basic-commands";
	}
		
	@RequestMapping(value = "/linux-user-and-group-commands", method = RequestMethod.GET)	
	public String linuxUserAndGroupCommands() {
		return "linux-user-and-group-commands";
	}
	
	@RequestMapping(value = "/linux-commands-process-commands", method = RequestMethod.GET)	
	public String linuxCommandsProcessCommands() {
		return "linux-commands-process-commands";
	}
	
}
