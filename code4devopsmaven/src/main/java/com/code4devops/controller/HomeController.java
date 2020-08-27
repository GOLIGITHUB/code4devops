package com.code4devops.controller;

import java.util.List;
import java.util.logging.Logger;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.code4devops.email.EmailProcess;
import com.code4devops.entity.CandidateDetails;
import com.code4devops.entity.CreateBlog;
import com.code4devops.service.CandidateService;
import com.code4devops.service.CreateBlogService;


@Controller
@RequestMapping("home")
public class HomeController {
	
	/*@Autowired
	MessageSource messageSource;*/
	
	@Autowired
	private CandidateService candidateService;
	
	@Autowired
	private CreateBlogService createBlogService;
	
	@Autowired
	private EmailProcess emailProcess;
	
	Logger logger=Logger.getLogger(HomeController.class.getClass().getName());
	
	@InitBinder
	public void initBinder(WebDataBinder dataBinder) {
	StringTrimmerEditor stringTrimmerEditor = new StringTrimmerEditor(true);
	dataBinder.registerCustomEditor(String.class, stringTrimmerEditor);
	}
	
	@RequestMapping( value="/welcome", method =  RequestMethod.GET)
	public String getCode4devopsHomePage(Model model){
		List<CreateBlog> list = createBlogService.getListOfBlog();
		model.addAttribute("list", list);
		return "welcome";
	}
	
	@RequestMapping( value="/queryFrom", method =  RequestMethod.GET)
	public String getQueryFrom(Model model){
		CandidateDetails details=new CandidateDetails();
		model.addAttribute("queryCandidateDetails", details);
	return "queryFrom";
	}
	
	
	@RequestMapping( value="/submitQuery", method =  RequestMethod.POST)
	public String getSubmitQuery(@Valid @ModelAttribute("queryCandidateDetails") CandidateDetails candidateDetails,BindingResult bindingResult,Model model){
		if(bindingResult.hasErrors()){
			model.addAttribute("error","wrong");
			logger.info(HomeController.class.getName()+" : "+candidateDetails.getCandidateName()+"something wrong");
			return "queryFrom";
		}else{
			model.addAttribute("success","Done");
			candidateService.candidateQuerySave(candidateDetails);
			logger.info(HomeController.class.getName()+" : "+candidateDetails.getCandidateName()+" save ");
			//emailProcess.sendEmail(candidateDetails.getCandidateEmail());
			//logger.info(HomeController.class.getName()+" : "+candidateDetails.getCandidateName()+" email send ");
			return "redirect:queryFrom";
		}	
	}

}
