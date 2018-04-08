package spring.DAOs;


import spring.models.Signup;

public interface SignupDao {

    void register(Signup signup);

    boolean confirm(String confirmationEmail, int confirmationNumber);
}