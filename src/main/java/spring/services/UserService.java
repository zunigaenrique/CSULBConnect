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

    public void register(Signup signup) throws NoSuchAlgorithmException {
        messageDigest=MessageDigest.getInstance("SHA-1");
        messageDigest.update(signup.getsPassword().getBytes());
        byte rawByte[]=messageDigest.digest();
        String hashValue=(new BASE64Encoder()).encode(rawByte);
        signup.setsPassword(hashValue);
        signup.setsCode((int)(Math.random()*10000));
        userDao.register(signup);
    }

    public void confirm(String confirmationEmail, int confirmationNumber) throws Exception {
        if(userDao.confirm(confirmationEmail,confirmationNumber)){
            userDao.moveSignupToUsers(confirmationEmail);
            return;
        }
        throw new Exception("wrong confirmation number");
    }
//    public void sendConfirmation(Signup signup){
//        String recipientEmail=signup.getsEmail();
//        int code=signup.getsCode();
//        String from="noreply.csulbconnect@gmail.com";
//        String host="smtp.gmail.com";
//    }

}
