package com.code4devops.daoImpl;

import java.util.logging.Logger;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.code4devops.dao.CandidateDao;
import com.code4devops.entity.CandidateDetails;

@Repository
public class CandidateDaoImpl implements CandidateDao{

		// need to inject the session factory
		@Autowired
		private SessionFactory sessionFactory;
	
	Logger logger=Logger.getLogger(CandidateDaoImpl.class.getClass().getName());
	
	@Override
	public void candidateQuerySaveDao(CandidateDetails details) {
		logger.info(CandidateDaoImpl.class.getName()+" : candidateQuerySaveDao(CandidateDetails details) "+ sessionFactory);
		Session  session = sessionFactory.getCurrentSession();
		session.save(details);		
		
	}

}
