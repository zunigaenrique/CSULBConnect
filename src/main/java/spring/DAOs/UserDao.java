package spring.DAOs;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import spring.models.Signup;
import spring.models.User;

import javax.sql.DataSource;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class UserDao {
    @Autowired

    DataSource datasource;

    @Autowired

    JdbcTemplate jdbcTemplate;

    public void register(Signup signup) {
        String sql = "insert into signup values (?,?,?,?,?)";
        jdbcTemplate.update(sql, signup.getsEmail(),signup.getsFirstName(),signup.getsPassword(),signup.getsCode(),signup.getsLastName());
    }

    public boolean confirm(String confirmationEmail, int confirmationNumber) {
        String sql="select * from signup where sEmail='"+confirmationEmail+"'";
        List<Signup> signups=jdbcTemplate.query(sql, new SignupMapper());
        if(signups.get(0).getsCode()==confirmationNumber){
            return true;
        }
        return false;
    }

    public void moveSignupToUsers(String email) {
        String sql="select * from signup where sEmail='"+email+"'";
        List<Signup> signups=jdbcTemplate.query(sql, new SignupMapper());
        Signup s=signups.get(0);
        sql="insert into users (uFirstName, uLastName, uEmail, uPassword) values (?,?,?,?)";
        jdbcTemplate.update(sql, s.getsFirstName(),s.getsLastName(),s.getsEmail(),s.getsPassword());
    }

    public void removeSignup(String email) {
        String sql="delete from signup where sEmail='"+email+"'";
        jdbcTemplate.update(sql);
    }

    public boolean isRegistered(String email) {
        String sql="select uEmail from users where uEmail='"+email+"'";
        List<User> users=jdbcTemplate.query(sql, new UserMapper());
        return(users.size()>0);
    }

//    public User validateUser(Login login) {
//
//        String sql = "select * from users where username='" + login.getUsername() + "' and password='" + login.getPassword()
//
//                + "'";
//
//        List<User> users = jdbcTemplate.query(sql, new UserMapper());
//
//        return users.size() > 0 ? users.get(0) : null;
//
//    }

}

class SignupMapper implements RowMapper<Signup> {
    public Signup mapRow(ResultSet rs, int arg1) throws SQLException {
        Signup signup=new Signup();
        signup.setsFirstName(rs.getString("sFirstName"));
        signup.setsLastName(rs.getString("sLastName"));
        signup.setsEmail(rs.getString("sEmail"));
        signup.setsPassword(rs.getString("sPassword"));
        signup.setsCode(rs.getInt("sCode"));

        return signup;
    }
}

class UserMapper implements RowMapper<User> {
    public User mapRow(ResultSet rs, int i) throws SQLException {
        User user=new User();
        user.setUemail(rs.getString("uEmail"));
        return user;
    }
}