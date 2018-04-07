package spring.services;

import org.springframework.beans.factory.annotation.Autowired;
import spring.DAOs.SignupDao;
import spring.models.Signup;
import sun.misc.BASE64Encoder;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
/**
 * Created by lin on 4/6/2018.
 */
public class RegisterService {

    @Autowired
    public SignupDao signupDao;

    MessageDigest messageDigest;

    public void register(Signup signup) throws NoSuchAlgorithmException {
        messageDigest=MessageDigest.getInstance("SHA-1");
        messageDigest.update(signup.getsPassword().getBytes());
        byte rawByte[]=messageDigest.digest();
        String hashValue=(new BASE64Encoder()).encode(rawByte);
        signup.setsPassword(hashValue);
        signup.setsCode((int)(Math.random()*10000));
        signupDao.register(signup);
    }

}
