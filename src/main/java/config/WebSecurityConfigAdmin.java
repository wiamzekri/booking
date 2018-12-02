package config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.annotation.Order;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.annotation.web.servlet.configuration.EnableWebMvcSecurity;
import org.springframework.security.core.userdetails.UserDetailsService;

import security.CustomUserDetailsService;

@Configuration
@EnableWebMvcSecurity
@ComponentScan(basePackageClasses = CustomUserDetailsService.class)

public class WebSecurityConfigAdmin extends WebSecurityConfigurerAdapter {
	
	 @Autowired 
	 private UserDetailsService userDetailsService;
	 
	 @Autowired
	 public void configAuthentication(AuthenticationManagerBuilder auth) throws Exception {    
		 auth.userDetailsService(userDetailsService);
	 } 
	 
	
	 
	 @Override
	 protected void configure(HttpSecurity http) throws Exception {
	   /*http.authorizeRequests()
	  .antMatchers("/admin/**").access("hasRole('ROLE_ADMIN')")
	  .and()
	    .formLogin().loginPage("/admin/login").permitAll()
	    .usernameParameter("username").passwordParameter("password")
	  .and()
	    .logout().logoutSuccessUrl("/admin/login?logout") 
	   .and()
	   .exceptionHandling().accessDeniedPage("/403")
	  .and()
	    .csrf();*/
		 
		 http
		 .authorizeRequests()
		 //.anyRequest().permitAll()
	     .antMatchers("/createadmin","/createhotel","/hotels","/deleteHotels").access("hasRole('ROLE_ADMIN')")
	     .and()
	     .authorizeRequests()
	     .antMatchers("/compte**","/reservation","/mesreservations","/savecomment","/rating").access("hasRole('ROLE_CLIENT')")
	     .and()
	     .authorizeRequests()
	     .antMatchers("/updateHotel","/createGerant","/addChambres","/chambres","/deleteChambres","/updateChambre","/prix","/addPrix").access("hasRole('ROLE_GERANT')")
	     .and()
	     .formLogin().loginPage("/login").permitAll()
	     .usernameParameter("username").passwordParameter("password")
	     .and()
	     .logout().logoutSuccessUrl("/login?logout")
	     .and()
		 .exceptionHandling().accessDeniedPage("/403")
		 .and()
		 .csrf().disable();
	    
	    
	   		
	 }
	 
}