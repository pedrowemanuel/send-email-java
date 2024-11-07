package br.edu.ifce.mail;

import java.net.MalformedURLException;

import org.apache.commons.mail.EmailAttachment;
import org.apache.commons.mail.EmailException;
import org.apache.commons.mail.MultiPartEmail;
import org.apache.commons.mail.SimpleEmail;

import br.edu.ifce.beans.Mail;

public class CommonsMail {
	private static final String hostName = "smtp.gmail.com";

	private static final String userNameAuth = "pedro.emanuel.santos08@gmail.com";
	private static final String passAuth = "";
	private static final String descriptionFrom = "Loja Online";
	private static final int smptPort = 587;

	public CommonsMail() throws EmailException, MalformedURLException {
	}

	public void sendSimpleEmail(Mail mail) throws EmailException {

		SimpleEmail email = new SimpleEmail();

		email.setHostName(hostName);
		email.setSmtpPort(smptPort);
		email.setAuthentication(userNameAuth, passAuth);
		email.setFrom(userNameAuth, descriptionFrom);
		System.setProperty("mail.smtp.ssl.protocols", "TLSv1.2");
//		email.setSSLOnConnect(true);
		email.setStartTLSEnabled(true);

		email.setSubject(mail.getSubject());
		email.setMsg(mail.getMessage());
		email.addTo(mail.getTo());

		email.send();
	}

	public static void main(String[] args) throws EmailException, MalformedURLException {
		new CommonsMail();
	}

}
