<h1><b>About Spring Boot Project Structure</b></h1>
<ul>
	<li>mvnw allows you to run a Maven project</li>
	<li>No need to have Maven installed or present on your path</li>
	<li>If correct version of Maven is NOT found on your computer</li>
	<li>Automatically downloads correct version and runs Maven</li>
	<li>Two files are provided</li>
	<li>mvnw.cmd for MS Windows  <strong> E:\coder_workstation\spring-boot\spring-boot-jar\spring-boot-jar>mvnw clean compile test</strong></li>
	<li>mvnw.sh for Linux/Mac    <strong>./mvnw clean compile test</strong></li>
	<li>If you already have Maven installed previously</li>
	<li> Then you can ignore/delete the mvnw files</li>
	<li> Just use Maven as you normally would</li>
</ul>	
<h2>Maven Standard Directory Structure</h2>
<table class="table">
	<tr>
		<th>Directory</th>
		<th>Description</th>
	</tr>
	<tr>
		<td>src/main/java</td>
		<td>Java source code</td>
	</tr>
	<tr>
		<td>src/main/resource</td>
		<td>Properties/config files used by your app</td>
	</tr>
	<tr>
		<td>src/test/java</td>
		<td>Unit testing soucre code</td>
	</tr>
</table>
<p><strong>mvnw.cmd:</strong>
first thing <b>mvnw.cmd</b> file for window and <b>mvnw.sh</b> for Linux operating system.both files doing same work depending on the operating system .
No need to have Maven installed or present on your path.
If the Correct version of Maven is NOT Found on your computer.
it Automatically Downloads correct Version and runs Maven if you have correct version install in your computer then delete 
.mvnw file form spring boot project</p>

<p><strong>pom.xml</strong> includes info that you entered at Spring Initializr website</p>
<pre>
&lt;dependencies&gt;
	&lt;dependency&gt;
	  &lt;groupId&gt;org.springframework.boot&lt;/groupId&gt;
	  &lt;artifactId&gt;spring-boot-started-web&lt;/artifactId&gt;
	&lt;/dependency&gt;
&lt;/dependencies&gt;
&lt;dependencies&gt;
	&lt;dependency&gt;
    	&lt;groupId&gt;org.springframework.boot&lt;/groupId&gt;
		&lt;artifactId&gt;spring-boot-started-test&lt;/artifactId&gt;
	&lt;/dependency&gt;
&lt;/dependencies&gt;
</pre>
<h4><strong>About of Spring Boot started dependency</strong></h4>
<ul>
  <li> A collection of Maven dependencies(Compatible versions)</li>
  <li> spring-boot-started-web spring-web, spring-webmvc, hibernate-Validator, tomcat, json</li>
</ul>
<h1>Maven POM file</h1>
<p><strong>Spring Boot Maven Plugin</strong></p>
<pre>
&lt;dependencies&gt;
 &lt;dependency&gt;
	&lt;groupId&gt;org.springframework.boot&lt;/groupId&gt;
	&lt;artifactId&gt;spring-boot-maven-plugin&lt;/artifactId&gt;
 &lt;/dependency&gt;
&lt;/dependencies&gt;
</pre>
<h4><strong>About of spring boot maven plugin dependency</strong></h4>
<ul>
	<li>Use to package executable jar or war archive can also easily run the application</li>
	<li>$ ./mvnw package</li>
	<li>$ ./mvnw spring-boot:run</li>
</ul>
<p>
	<strong>@springBootApplicatin</strong>: 
	<p>(Enables) Auto Configuration, Component scanning ,Additional Configuration</p>
	<p>Composed of following annotations</p>
	<p>@EnableAutoConfiguration</p>
	<p>@ComponentScan</p>
	<p>@Configuration</p>
</p>
<h1>Annotations</h1>
<p>@SpringBootApplication is composed of the following annotations:</p>
<table class="table">
	<tr>
		<th>Annotaion</th>
		<th>Description</th>
	</tr>
	<tr>
		<td>@EnableAutoConfiguration</td>
		<td>Enables Spring Boot's auto-configuration support</td>
	</tr>
	<tr>
		<td>@ComponentScan</td>
		<td>Enables component scanning of current package Also recursively scans sub-packages</td>
	</tr>
	<tr>
		<td>@Configuration</td>
		<td>Able to register extra beans with @Bean or import other configuration classes</td>
	</tr>
</table>
<p>
	<strong>@ComponentScan , @Configuration</strong>
	:Same annotaions that we've used before with traditional Springs Apps

</p>
<pre>
package com.jbb.springboot.MySpringBootApp2;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
@SpringBootApplication
public class MySpringBootApp2Application {

	public static void main(String[] args) {
		SpringApplication.run(MySpringBootApp2Application.class, args);
	}

}
</pre>
