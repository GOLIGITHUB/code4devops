<p>Main Spring Boot application class Automatically Component scans sub-package</p>
<p>includes "controller" sub package</p>
<p>Any other sub-package you create can give them any name</p>
<ol>
	<li>Default scanning is fine if everything is under</li>
	<li><strong>com.app.sprinboot.controller</strong></li>
	<li>
		But what about my other package?
		<ol>
			<li>com.jbb</li>
			<li>javablackbook.com</li>	
			<li>code.com4.devops</li>		
		</ol>
		
	</li>

</ol>
<pre>
package com.code4devops.springbootjar;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication(scanBasePackages={"com.jbb",
		"javablackbook.com",
		"code.com4.devops"})
public class SpringBootJarApplication {

	public static void main(String[] args) {
		SpringApplication.run(SpringBootJarApplication.class, args);
	}

}

</pre>
<h1>Application Properties</h1>
<ol>
	<li>By default, Spring Boot Will load properties from:application.properties</li>
	<li>Create By Spring Initializr,Empty at the Beginning</li>
</ol>
<h4><strong>Example  : Save As </strong></h4>
<p><strong>application.properties</strong></p>
<pre>
#can add spring boot properties
server.port=8585
#Also Add you own custom properties
code4devops.com=Ashutosh
code4devops.com=Shiva
</pre>
<h1>static Content</h1>
<ol>
	<li>by default ,Spring Boot will load static resource from "/static" directory</li>
	<li>Examples: of static resource HTML files,CSS,Javascript,image</li>
</ol>
<h4><strong>WARNING:</strong></h4>
<ul>
	<li>Do Not use the src/main/webapp directory if our application is packaged as a JAR</li>
	<li>Although this is a standard Maven Directory,it works only with WAR packaing </li>
	<li>It is silently ignored by most build tools if you generate a JAR</li>
</ul>
<h1>Templates</h1>
<ol>
	<li>
		Spring Boot includes auto-configuration for following template engines
		<ol>
			<li>FreeMarker</li>
			<li>Thymeleaf(is popular template engine)</li>
			<li>Mustache</li>
		</ol>
	</li>
	<li>by default ,Spring Boot will load templates from "/templates" directory</li>
</ol>
