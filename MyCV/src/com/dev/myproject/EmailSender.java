package com.dev.myproject;

import java.io.UnsupportedEncodingException;
import java.util.*;

import javax.mail.*;
import javax.mail.internet.*;

public class EmailSender {
	
	/*
	 * Thay doi muc do bao mat cua email:
	 * https://www.google.com/settings/u/2/security/lesssecureapps?pageId=none
	 */
	
	private final String MAIL_FROM = "cqminh1995@gmail.com";
	private final String PASSWORD = "quocminh1995";
	private String subject = "DEMO GOOGLE APP ENGINE: ";
	
	// private final String MY_EMAIL = "memy19992@gmail.com";
	
	private Properties props;
	private Session session;
	
	public EmailSender() {
		props = new Properties();
		session = Session.getDefaultInstance(props, 
			new Authenticator() {
				@Override
				protected PasswordAuthentication getPasswordAuthentication() {
					return new PasswordAuthentication(MAIL_FROM, PASSWORD);
				}
			});
	}
	
	public void sendEmailRequest(String recipient, String message) {
		
		try {
			Message msg = new MimeMessage(session);
			msg.setFrom(new InternetAddress(MAIL_FROM, "Demo Google App Engine"));
			msg.addRecipient(Message.RecipientType.TO, new InternetAddress(recipient, "Admin"));
			msg.setSubject(subject + "Xac nhan yeu cau Quan tri vien");
			msg.setContent(message, "text/html; charset=utf-8");
			
			Transport.send(msg);
			System.out.println("Sent.");
			
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		} catch (MessagingException e) {
			e.printStackTrace();
		}
	}
	
public void replyEmailRequest(String recipient, String message) {
		
		try {
			Message msg = new MimeMessage(session);
			msg.setFrom(new InternetAddress(MAIL_FROM, "Demo Google App Engine"));
			msg.addRecipient(Message.RecipientType.TO, new InternetAddress(recipient, "Guest"));
			msg.setSubject(subject + "Xac nhan yeu cau Quan tri vien");
			msg.setContent(message, "text/html; charset=utf-8");
			
			Transport.send(msg);
			System.out.println("Sent.");
			
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		} catch (MessagingException e) {
			e.printStackTrace();
		}
	}
}
