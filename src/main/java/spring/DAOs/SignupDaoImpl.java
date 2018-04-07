package spring.DAOs;

import java.security.MessageDigest;
import java.sql.ResultSet;

import java.sql.SQLException;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.simple.SimpleJdbcCall;
import spring.models.Login;
import spring.models.Signup;
import spring.models.User;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.jdbc.core.JdbcTemplate;

import org.springframework.jdbc.core.RowMapper;


public class SignupDaoImpl implements SignupDao {

    @Autowired

    DataSource datasource;

    @Autowired

    JdbcTemplate jdbcTemplate;

    public void register(Signup signup) {

        String sql = "insert into signup values(?,?,?,?)";

        jdbcTemplate.update(sql, new Object[] {signup.getsEmail(),signup.getsName(),signup.getsPassword(),signup.getsCode()});

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
        signup.setsName(rs.getString("sName"));
        //signup.setsEmail(rs.getString("sEmail"));
        signup.setsCode(rs.getInt("sCode"));

        return signup;

    }

}