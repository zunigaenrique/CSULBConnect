package spring;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.ImportResource;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.provisioning.InMemoryUserDetailsManager;

import javax.sql.DataSource;

/**
 * Created by lin on 4/14/2018.
 */
@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {
    @Autowired
    private BCryptPasswordEncoder bCryptPasswordEncoder;

    public void configure(AuthenticationManagerBuilder auth) throws Exception {
//        auth.jdbcAuthentication().usersByUsernameQuery("select * from users where uEmail=?").dataSource(dataSource).passwordEncoder(passwordEncoder());
    }
    @Override
    public void configure(WebSecurity web){
        web.ignoring()
                .antMatchers("/resources/**")
                .antMatchers("/reg")
                .antMatchers("/conf")
                .antMatchers("/regConfirm");
    }
    @Override
    protected void configure(HttpSecurity http) throws Exception {

        http.authorizeRequests()
                .antMatchers("/index").permitAll();
        http.authorizeRequests().antMatchers("/blank").denyAll();
//                .antMatchers("/conf").permitAll()
//                .antMatchers("/reg").permitAll();
//                .antMatchers("/regConfirm").permitAll();

        http.formLogin().loginPage("/login").permitAll()
                .loginProcessingUrl("/login");
    }
    @Bean
    @Override
    public UserDetailsService userDetailsService(){
        UserDetails user= User.withDefaultPasswordEncoder().username("user").password("password").roles("USER").build();
        return new InMemoryUserDetailsManager(user);
    }
}

//    @Autowired
//    public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
//        auth.inMemoryAuthentication().withUser("user").password("{noop}password").roles("USER");
//    }
//@Autowired
//DataSource dataSource;

//@Configuration
//@ImportResource({"classpath:webSecurityConfig.xml"})
//public class SecurityConfig{
//    public SecurityConfig(){
//        super();
//    }
//}