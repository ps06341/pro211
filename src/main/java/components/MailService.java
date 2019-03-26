package components;

import java.io.File;
import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

@Service
public class MailService {

    private JavaMailSender mailSender;

    public JavaMailSender getMailSender() {
        return mailSender;
    }

    public void setMailSender(JavaMailSender mailSender) {
        this.mailSender = mailSender;
    }

    public void sendMail(String emailId) {
        MimeMessage message = this.mailSender.createMimeMessage();
        MimeMessageHelper mimeHelper;
        try {
            mimeHelper = new MimeMessageHelper(message, true);
            mimeHelper.setTo(emailId);
            mimeHelper.setFrom("ngvdaimail@gmail.com");
            mimeHelper.setSubject("Password Reset");
            mimeHelper.setText("<a href='http://localhost:8084/home/newPassword.htm?email=" + emailId + "'> Click here</a> to reset password", true);
            mailSender.send(message);
        } catch (MessagingException e) {
            System.out.println("Error Sending email " + e.getMessage());
        }

    }

    public void send(String from, String subject, String body) {
        try {
            MimeMessage message = this.mailSender.createMimeMessage();
            MimeMessageHelper mimeHelper = new MimeMessageHelper(message, true);
            mimeHelper.setFrom(from, from);
            mimeHelper.setTo("ngvdaimail@gmail.com");
            mimeHelper.setReplyTo(from, from);
            mimeHelper.setSubject(subject);
            mimeHelper.setText(body, true);

            mailSender.send(message);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public void send(String from,String to, String subject, String body) {
        try {
            MimeMessage message = this.mailSender.createMimeMessage();
            MimeMessageHelper mimeHelper = new MimeMessageHelper(message, true);
            mimeHelper.setFrom("ngvdaimail@gmail.com");
            mimeHelper.setTo(to);
            mimeHelper.setReplyTo(from, from);
            mimeHelper.setSubject(subject);
            mimeHelper.setText(body, true);

            mailSender.send(message);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}
