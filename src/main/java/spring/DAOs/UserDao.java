package spring.DAOs;

import spring.models.Login;
import spring.models.User;

public interface UserDao {

    void register(User user);

    User validateUser(Login login);

}