package com.code4devops.daoImpl;

import java.util.List;
import java.util.logging.Logger;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.code4devops.dao.CreateBlogDao;
import com.code4devops.entity.CreateBlog;

@Repository
public class CreateBlogDaoImpl implements CreateBlogDao{

	// need to inject the session factory
	@Autowired
	private SessionFactory sessionFactory;
	
	Logger logger=Logger.getLogger(CreateBlogDaoImpl.class.getClass().getName());
	
	@Override
	public List<CreateBlog> getListOfBlog(){
		
		logger.info(CreateBlogDaoImpl.class.getName()+" : getListOfBlog() "+ sessionFactory);
		
		Session session=sessionFactory.getCurrentSession();
		
		List<CreateBlog> list=session.createQuery("from CreateBlog").getResultList();
				
		return list;
		
	}
}
