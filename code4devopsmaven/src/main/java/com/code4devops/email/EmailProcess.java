package com.code4devops.email;

import java.util.Properties;
import java.util.logging.Logger;

import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class EmailProcess {
	
	private static final Logger LOGGER = Logger.getLogger(EmailProcess.class.getName());
	
	public void sendEmail(String email) {
		try{ 
			Properties properties=SmtpProperties.getSmtpProperties();
		  	Session  sessionx = Session.getInstance(properties,
   		    new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication("javablackbook@gmail.com","@9560822035@");
				}
			});
		     Message message = new MimeMessage(sessionx);
		  	 message.setFrom(new InternetAddress("javablackbook@gmail.com"));
			 message.setRecipients(Message.RecipientType.TO,InternetAddress.parse(email));
			 message.setSubject("Dear "+email);
			 message.setText("Dear "+email+", Thank's for your suggestion."
						+"\n\n We will response as soon as possible." 
					+ "\n\n thanks");
				Transport.send(message);
				LOGGER.info(EmailProcess.class.getName()+":"+"sendEmail(String email):done");  
		  }catch(Exception exception){
			  LOGGER.info(EmailProcess.class.getName()+":"+"sendEmail(String email):"+exception);
		  }
			
		}
}
