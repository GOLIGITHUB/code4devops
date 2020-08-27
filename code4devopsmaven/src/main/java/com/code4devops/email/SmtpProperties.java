package com.code4devops.email;

import java.util.Properties;

public class SmtpProperties {
private static Properties props;
	
	public final static  Properties getSmtpProperties(){
		props = new Properties();
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.port", "587");
	return props;	
	}
}
