package spring.services;

import spring.DAOs.UserDao;
import spring.models.Login;
import spring.models.User;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * Created by lin on 2/25/2018.
 */
public class UserServiceImpl implements UserService {

    @Autowired
    public UserDao userDao;

    public void register(User user) {
        userDao.register(user);
    }

    public User validateUser(Login login) {
        return userDao.validateUser(login);
    }

}