package com.StockHandling;

import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;


public class Email {
	
	public static void sendMail(String recepient) throws Exception {
		System.out.println("Prepareing send to email");
		
		Properties prop = new Properties();
		
		prop.put("mail.smtp.auth", "true");
		prop.put("mail.smtp.starttls.enable", "true");
		prop.put("mail.smtp.host", "smtp.gmail.com");
		prop.put("mail.smtp.port", "587");
		
		String accountEmail = "kiaoraentp@gmail.com";
		String pwdEmail = "KE#mathale@2021ITP";
		
		Session session = Session.getInstance(prop, new Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(accountEmail, pwdEmail);
				
			} 
		});
		Message message = prepareMessage(session,accountEmail,recepient);
		
		Transport.send(message);
		System.out.println("send succsefully");
	}

	private static Message prepareMessage(Session session, String accountEmail, String recepient) {
		Message message = new MimeMessage(session);
		try {
			message.setFrom(new InternetAddress(accountEmail));
			message.setRecipient(Message.RecipientType.TO, new InternetAddress(recepient));
			message.setSubject("Stock Alert");
			message.setText("Stock evels going down");
		} catch (MessagingException e) {
			e.printStackTrace();
		}
		return message;
	}

}
