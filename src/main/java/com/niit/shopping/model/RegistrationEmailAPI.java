package com.niit.shopping.model;
 
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
 
/**
 * @author Crunchify.com
 * 
 */
 
@Service("registrationEmail")
public class RegistrationEmailAPI {
 
	@Autowired
	  MailSender registrationmail ; // MailSender interface defines a strategy
										// for sending simple mails

	@Transactional
	public void readyToSendEmail(String toAddress, String fromAddress, String subject, String msgBody) {
 
		SimpleMailMessage registrationMsg = new SimpleMailMessage();
		registrationMsg.setFrom(fromAddress);
		registrationMsg.setTo(toAddress);
		registrationMsg.setSubject(subject);
		registrationMsg.setText(msgBody);
		registrationmail.send(registrationMsg);
	}
}