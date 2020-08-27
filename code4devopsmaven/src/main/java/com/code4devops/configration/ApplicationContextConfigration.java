package com.code4devops.configration;
import java.beans.PropertyVetoException;
import java.util.Properties;
import java.util.logging.Logger;

import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewResolverRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.tiles3.TilesConfigurer;
import org.springframework.web.servlet.view.tiles3.TilesViewResolver;

import com.code4devops.email.EmailProcess;
import com.mchange.v2.c3p0.ComboPooledDataSource;

@Configuration
@EnableWebMvc
@EnableTransactionManagement
@ComponentScan( basePackages = "com.code4devops")
@PropertySource("classpath:persistence-mysql.properties")
public class ApplicationContextConfigration implements WebMvcConfigurer {
	
	private Logger logger= Logger.getLogger(getClass().getName());
	
	@Autowired
	private Environment environment;
		
	@Bean
    public TilesConfigurer tilesConfigurer() {
        TilesConfigurer tilesConfigurer = new TilesConfigurer();
        tilesConfigurer.setDefinitions(new String[] { "/WEB-INF/tiles/home-tiles.xml","/WEB-INF/tiles/python-tiles.xml", 
        											  "/WEB-INF/tiles/linux-tiles.xml","/WEB-INF/tiles/blog-tiles.xml",
        											  "/WEB-INF/tiles/spring-boot.xml"});
        tilesConfigurer.setCheckRefresh(true);
        return tilesConfigurer;
    }
   
    @Override
    public void configureViewResolvers(ViewResolverRegistry registry) {
        TilesViewResolver viewResolver = new TilesViewResolver();
        registry.viewResolver(viewResolver);
    }
     
    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/static/**").addResourceLocations("/static/");
    }
    
    @Bean
    public EmailProcess emailProcess() {
		EmailProcess emailProcess=new EmailProcess();
		return emailProcess;
	}
   	
	@Bean
	public DataSource securityDataSource(){		
		//create connection pool
		ComboPooledDataSource dataSource=new ComboPooledDataSource();
		try{
			//set the java Database Connectivity (JDBC) driver
			dataSource.setDriverClass(environment.getProperty("jdbc.driver"));
			logger.info(">>> jdbc.driver=" + environment.getProperty("jdbc.driver"));
			//set the java Database Connectivity (JDBC) url
			dataSource.setJdbcUrl(environment.getProperty("jdbc.url"));
			logger.info(">>> jdbc.url=" + environment.getProperty("jdbc.url"));
			//set the java Database Connectivity (JDBC) user
			dataSource.setUser(environment.getProperty("jdbc.username"));
			logger.info(">>> jdbc.user=" + environment.getProperty("jdbc.username"));
			//set the java Database Connectivity (JDBC) password
			dataSource.setPassword(environment.getProperty("jdbc.password"));
			logger.info(">>> jdbc.password=" + environment.getProperty("jdbc.password"));
			//set  Initial Pool Size
			dataSource.setInitialPoolSize(getIntProperty("connection.pool.initialPoolSize"));
			logger.info(">>> connection.pool.initialPoolSize=" + getIntProperty("connection.pool.initialPoolSize"));
			//set Min Pool Size
			dataSource.setMinPoolSize(getIntProperty("connection.pool.minPoolSize"));
			logger.info(">>> connection.pool.minPoolSize=" + getIntProperty("connection.pool.minPoolSize"));
			//set Max Pool Size
			dataSource.setMaxPoolSize(getIntProperty("connection.pool.maxPoolSize"));
			logger.info(">>> connection.pool.maxPoolSize=" + getIntProperty("connection.pool.maxPoolSize"));
			//set Max Idle Time
			dataSource.setMaxIdleTime(getIntProperty("connection.pool.maxIdleTime"));
			logger.info(">>> connection.pool.maxIdleTime=" + getIntProperty("connection.pool.maxIdleTime"));
						
		}catch (PropertyVetoException exception) {
			throw new RuntimeException(exception);
		}
		return dataSource;
	}
    	
	//here create one helper method it need read environment property and convert to int
	private int getIntProperty(String propName){
		String propValue=environment.getProperty(propName);
		int intPropValue=Integer.parseInt(propValue);
		return intPropValue;
	}
	
	private Properties getHibernateProperties() {
	       Properties properties = new Properties();
	       properties.put("hibernate.dialect", environment.getRequiredProperty("hibernate.dialect"));
	       properties.put("hibernate.show_sql", environment.getRequiredProperty("hibernate.show_sql"));
	       properties.put("hibernate.format_sql", environment.getRequiredProperty("hibernate.format_sql"));
	       properties.put("hibernate.hbm2ddl.auto", environment.getRequiredProperty("hibernate.hbm2ddl.auto"));
	       return properties;        
	}
	
	
	@Bean
	public LocalSessionFactoryBean sessionFactory() {
		// create session factorys
		LocalSessionFactoryBean sessionFactory = new LocalSessionFactoryBean();
		sessionFactory.setDataSource(securityDataSource());
		sessionFactory.setPackagesToScan(environment.getProperty("hiberante.packagesToScan"));
		sessionFactory.setHibernateProperties(getHibernateProperties());
		return sessionFactory;
	}
	
	@Bean
	@Autowired
	public HibernateTransactionManager transactionManager(SessionFactory sessionFactory) {
		// setup transaction manager based on session factory
		HibernateTransactionManager txManager = new HibernateTransactionManager();
		txManager.setSessionFactory(sessionFactory);
		return txManager;
	}
}
