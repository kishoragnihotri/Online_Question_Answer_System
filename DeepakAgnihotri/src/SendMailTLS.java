//package sendmail;

	
	import java.util.Properties;

	import javax.mail.Message;
	import javax.mail.MessagingException;
	import javax.mail.PasswordAuthentication;
	import javax.mail.Session;
	import javax.mail.Transport;
	import javax.mail.internet.InternetAddress;
	import javax.mail.internet.MimeMessage;

	public class SendMailTLS {

		public static void main(String[] args) {

			final String username = "kishoragnihotri.2011@gmail.com"; // enter your mail id
			final String password = "Deepak1821007";// enter ur password

			Properties props = new Properties();
			props.put("mail.smtp.auth", "true");
			props.put("mail.smtp.starttls.enable", "true");
			props.put("mail.smtp.host", "smtp.gmail.com");
			props.put("mail.smtp.port", "587");

			Session session = Session.getInstance(props,
			  new javax.mail.Authenticator() {
				protected PasswordAuthentication getPasswordAuthentication() {
					return new PasswordAuthentication(username, password);
				}
			  });

			try {

				Message message = new MimeMessage(session);
				message.setFrom(new InternetAddress("kishoragnihotri.2011@gmail.com")); // same email id
				message.setRecipients(Message.RecipientType.TO,
					InternetAddress.parse("taichiswag@gmail.com"));// whome u have to send mails that person id
				message.setSubject("Testing project with mail api");
				message.setText("Dear GURU JI,"
					+ "\nWork as seprately but i m little bit cofuse in Blob, please!");

				Transport.send(message);

				System.out.println("Done");

			} catch (MessagingException e) {
				throw new RuntimeException(e);
			}
		}
	}

