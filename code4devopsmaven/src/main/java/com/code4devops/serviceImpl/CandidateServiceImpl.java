package com.code4devops.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.code4devops.dao.CandidateDao;
import com.code4devops.entity.CandidateDetails;
import com.code4devops.service.CandidateService;

@Service
public class CandidateServiceImpl  implements CandidateService{
	
	
	
	@Autowired
	private CandidateDao candidateDao;
	
	
	@Override
	@Transactional
	public void candidateQuerySave(CandidateDetails details) {
		candidateDao.candidateQuerySaveDao(details);
	}

}
