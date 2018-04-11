package spring.services;

import org.springframework.beans.factory.annotation.Autowired;
import spring.DAOs.UserDao;
import spring.models.Signup;
import sun.misc.BASE64Encoder;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import java.util.*;
import javax.mail.*;
import javax.mail.internet.*;
import javax.activation.*;

/**
 * Created by lin on 4/6/2018.
 */
public class UserService {

    @Autowired
    public UserDao userDao;
    private MessageDigest messageDigest;

    public void register(Signup signup) throws NoSuchAlgorithmException, MessagingException, Exception {
        if(userDao.isRegistered(signup.getsEmail())){
            throw new Exception("already registered");
        }
        messageDigest=MessageDigest.getInstance("SHA-1");
        messageDigest.update(signup.getsPassword().getBytes());
        byte rawByte[]=messageDigest.digest();
        String hashValue=(new BASE64Encoder()).encode(rawByte);
        signup.setsPassword(hashValue);
        signup.setsCode((int)(Math.random()*10000));
        userDao.register(signup);
        sendConfirmation(signup);
    }

    public void confirm(String confirmationEmail, int confirmationNumber) throws Exception {
        if(userDao.confirm(confirmationEmail,confirmationNumber)){
            userDao.moveSignupToUsers(confirmationEmail);
            removeSignup(confirmationEmail);
            return;
        }
        throw new Exception("wrong confirmation number");
    }

    public void removeSignup(String confirmationEmail){
        userDao.removeSignup(confirmationEmail);
    }

    public void sendConfirmation(Signup signup) throws MessagingException {
        Properties properties=new Properties();
        final String from="noreply@connect.edu";
        String host="csulbconnect.ddns.net";
        final String pw="c0nn3ct";
        properties.put("mail.transport.protocol", "smtp");
        properties.put("mail.smtp.auth","true");
        properties.put("mail.smtp.host", host);
        properties.put("mail.smtp.port", "25");
        properties.put("mail.smtp.quitwait", "false");
        Session session=Session.getDefaultInstance(properties);
        session.setDebug(true);

        Message message=new MimeMessage(session);
        message.setSubject("CSULBConnect Validation Code");
        message.setText("Your CSULBConnect validation code is "+signup.getsCode()+".");
        message.setFrom(new InternetAddress("noreply@connect.edu"));
        message.setRecipient(Message.RecipientType.TO, new InternetAddress(signup.getsEmail()));

        Transport transport=session.getTransport();
        transport.connect(from, pw);
        transport.sendMessage(message, message.getAllRecipients());
        transport.close();
    }
}
