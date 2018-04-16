package spring;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.web.WebApplicationInitializer;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.sql.DataSource;

/**
 * Created by lin on 4/15/2018.
 */
@Configuration
public class WebMVCConfig extends WebMvcConfigurerAdapter{
    @Bean(name={"bCryptPasswordEncoder","passwordEncoder","abc"})
    public BCryptPasswordEncoder bCryptPasswordEncoder(){
        return new BCryptPasswordEncoder();
    }

    @Bean(name="dataSource")
    public DriverManagerDataSource dataSource(){
        DriverManagerDataSource dm=new DriverManagerDataSource();
        dm.setDriverClassName("com.mysql.jdbc.Driver");
        dm.setUrl("jdbc:mysql://csulbconnect.cbd57tt7k2cb.us-west-1.rds.amazonaws.com:3306/csulbconnect");
        dm.setUsername("csulbconnect");
        dm.setPassword("haBJdYw86N");
        return dm;
    }

    @Bean
    public JdbcTemplate jdbcTemplate(DataSource dataSource){
        JdbcTemplate jdbcTemplate=new JdbcTemplate(dataSource);
        jdbcTemplate.setResultsMapCaseInsensitive(true);
        return jdbcTemplate;
    }
}
