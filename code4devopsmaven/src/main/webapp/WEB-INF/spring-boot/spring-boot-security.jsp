<h1>What about Security?</h1>
<ol>
	<li>You may NOT Want to expose all of this information</li>
	<li>Add Spring Security to project and endpoints are secured</li>
	<li>/health and /info are still available you can disable them if you want</li>
</ol>
<p><strong>FILE : /demowithtool/src/main/resources/application.properties</strong></p>
<pre>
#use wildcard  "*" to exposed all endpoints
#Can also exposed individual endpoints with a comma-delimited list	
management.endpoints.web.exposure.include=*
#Exclude individual endpoints with a comma-delimited list
management.endpoints.web.exposure.exclude=health,info
</pre>

<p><strong>Add in your POM.XML file Spring Security dependency</strong></p>
<pre>
&lt;dependencies&gt;
    &lt;dependency&gt;
        &lt;groupId&gt;org.springframework.boot&lt;/groupId&gt;
        &lt;artifactId&gt;spring-boot-starter-security&lt;/artifactId&gt;
    &lt;/dependency&gt;
&lt;/dependencies&gt;
</pre>	
<p><strong>Default User Name: </strong> user</p>
<p><strong>Default password: See Your Console </strong></p>
<p><strong>Using generated security password: </strong>7f289525-fe1b-4876-9a90-d515a1a496f9</p>

<h1>Spring Security configuration</h1>
<p>you can override default user name and generated password</p>
<p><strong>FILE : /demowithtool/src/main/resources/application.properties</strong></p>
<pre>
spring.security.user.name=ashu
spring.security.user.password=ashu
</pre>
<p><a href="https://docs.spring.io/spring-boot/docs/2.2.2.RELEASE/reference/htmlsingle/#boot-features-security"target="_blank">For More Detail about Security</a>
<h1>Customizing Spring Security</h1>
<p>You can customize Spring Security for Spring Boot Actuator. Use a database for roles,encrypted passwords etc...</p>
<pre>
@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		UserBuilder users = User.withDefaultPasswordEncoder();
		auth.inMemoryAuthentication()
			.withUser(users.username("aman").password("aman").roles("ADMIN"))
			.withUser(users.username("annu").password("annu").roles("MANAGER"))
			.withUser(users.username("ashu").password("ashu").roles("EMPLOYEE"));
	}

	@Override
	protected void configure(HttpSecurity httpSecurity) throws Exception {

		httpSecurity.authorizeRequests()
				.antMatchers("/").permitAll()
				.antMatchers("/Actuator/**").hasRole("ADMIN")
				.and()
				.formLogin()
					.loginPage("/showMyLoginPage")
					.loginProcessingUrl("/authenticateTheUser")
				.permitAll()
				.and()
				.logout()
					.logoutSuccessUrl("/")  // after logout redirect to landing page (root)
					.permitAll()
					.and()
				.exceptionHandling().accessDeniedPage("/access-denied");
				
		
	}
</pre>
