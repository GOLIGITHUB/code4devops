package com.code4devops.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.code4devops.dao.CandidateDao;
import com.code4devops.dao.CreateBlogDao;
import com.code4devops.entity.CandidateDetails;
import com.code4devops.entity.CreateBlog;
import com.code4devops.service.CandidateService;
import com.code4devops.service.CreateBlogService;

@Service
public class CreateBlogServiceImpl  implements CreateBlogService{
	
	
	
	@Autowired
	private CreateBlogDao createBlogDao;
	
	
	@Override
	@Transactional
	public List<CreateBlog> getListOfBlog(){
		List<CreateBlog> list=null;
		try{
		 list=createBlogDao.getListOfBlog();
		}catch (Exception e) {
			System.out.println(e);
		}
		return	list;
	}
	
	
}
