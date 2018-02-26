package spring.services;

import spring.models.Login;
import spring.models.User;

/**
 * Created by lin on 2/25/2018.
 */
public interface UserService {

    void register(User user);

    User validateUser(Login login);
}