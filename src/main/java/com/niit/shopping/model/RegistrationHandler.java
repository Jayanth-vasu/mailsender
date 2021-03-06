package com.niit.shopping.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.binding.message.MessageBuilder;
import org.springframework.binding.message.MessageContext;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shopping.service.LoginService;
import com.niit.shopping.service.RegisterService;

@Component
public class RegistrationHandler {

	public UserDetails startFlow() {
		return new UserDetails();
	}

	@Autowired
	RegisterService regser;

	public void saveRegister(UserDetails userDetails) {

		regser.saveOrUpdate(userDetails);

	}

	@Autowired
	LoginService ls;

	public String loginuser(UserDetails userDetails) {
		boolean isvaliduser = false;
		String status = "success";
		isvaliduser = ls.checkUser(userDetails);
		if (isvaliduser == true) {
			return status = "failure";
		}

		return status;

	}

	public String validateDetails(UserDetails userDetails, MessageContext messageContext) {
		String status = "success";
		if (userDetails.getUser_firstname().isEmpty()) {
			messageContext.addMessage(new MessageBuilder().error().source("user_firstname")
					.defaultText("Username cannot be Empty").build());
			status = "failure";
		}
		if (userDetails.getUser_lastname().isEmpty()) {
			messageContext.addMessage(new MessageBuilder().error().source("user_lastname")
					.defaultText("Username cannot be Empty").build());
			status = "failure";
		}
		if (userDetails.getMail_id().isEmpty()) {
			messageContext.addMessage(new MessageBuilder().error().source("mail_id")
					.defaultText("User's email id cannot be Empty").build());
			status = "failure";
		}
		if (userDetails.getMobile_number() == null) {
			messageContext.addMessage(new MessageBuilder().error().source("mobile_number")
					.defaultText("User's mobile number cannot be Empty").build());
			status = "failure";
		}
		if (userDetails.getPassword() == null) {
			messageContext.addMessage(
					new MessageBuilder().error().source("password").defaultText("Please enter your password").build());
			status = "failure";
		}
		if (userDetails.getConfirm_password() == null) {
			messageContext.addMessage(new MessageBuilder().error().source("confirm_password")
					.defaultText("Please enter your password").build());
			status = "failure";
		}
		if (userDetails.getConfirm_password() != userDetails.getPassword()) {
			messageContext.addMessage(new MessageBuilder().error().source("confirm_password")
					.defaultText("Password does not match").build());
			status = "failure";
		}
		return status;
	}
}
