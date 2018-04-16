package spring;

import org.springframework.security.web.context.AbstractSecurityWebApplicationInitializer;

/**
 * Created by lin on 4/14/2018.
 */
public class SecurityWebApplicationInitializer
        extends AbstractSecurityWebApplicationInitializer {

    public SecurityWebApplicationInitializer() {
        super(SecurityConfig.class);
    }
}