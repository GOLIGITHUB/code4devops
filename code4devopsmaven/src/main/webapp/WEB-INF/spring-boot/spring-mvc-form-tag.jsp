<h1>How to Use JSTL <b class="MySpecialWord">&lt;form:form&gt;</b>  and <b class="MySpecialWord">&lt;form:input&gt;</b> tag in Spring MVC </h1>
<p><b>Here We Use :</b></p>
<p><b>JDK : </b> Version: 1.8</p>
<p><b>IDE : </b> Eclipse IDE for Enterprise Java Developers, Version: 2020-06 </p>
<p><b>Build Tool :</b> Maven,Version: 3.2.0</p>
<p><b>Spring : </b> Version: 5.2.8</b></p>
<p><b>Server : </b> apache-tomcat-9.0.34</p>

<img src="${pageContext.request.contextPath}/static/img/spring-mvc-jstl/spring-mvc-jstl-form-tag.jpg">
<p><b>POM.XML</b></p>
<pre class="MyCodeBlock">
&lt;project xmlns="http://maven.apache.org/POM/4.0.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/maven-v4_0_0.xsd"&gt;
&lt;modelVersion&gt;4.0.0&lt;/modelVersion&gt;
&lt;groupId&gt;com.corejava&lt;/groupId&gt;
&lt;artifactId&gt;spring-mvc-java-config-model&lt;/artifactId&gt;
&lt;packaging&gt;war&lt;/packaging&gt;
&lt;version&gt;0.0.1-SNAPSHOT&lt;/version&gt;
&lt;name&gt;spring-mvc-java-config-model Maven Webapp&lt;/name&gt;
&lt;url&gt;http://maven.apache.org&lt;/url&gt;
&lt;properties&gt;
  &lt;springframework.version&gt;5.2.8.RELEASE;/springframework.version&gt;
  &lt;maven.compiler.target&gt;1.8&lt;/maven.compiler.target&gt;
  &lt;maven.compiler.source&gt;1.8&lt;/maven.compiler.source&gt;
&lt;/properties&gt;
&lt;dependencies&gt;
  &lt;dependency&gt;
    &lt;groupId&gt;org.springframework&lt;/groupId&gt;
    &lt;artifactId&gt;spring-webmvc&lt;/artifactId&gt;
    &lt;version&gt;${springframework.version}&lt;/version&gt;
  &lt;/dependency&gt;
  &lt;dependency&gt;
    &lt;groupId&gt;javax.servlet&lt;/groupId&gt;
    &lt;artifactId&gt;javax.servlet-api&lt;/artifactId&gt;
    &lt;version&gt;4.0.1&lt;/version&gt;
   &lt;/dependency&gt;
  &lt;/dependencies&gt;
&lt;build&gt;
&lt;finalName&gt;spring-mvc-java-config-model&lt;/finalName&gt;
&lt;plugins&gt;
 &lt;plugin&gt;
   &lt;groupId&gt;org.apache.maven.plugins&lt;/groupId&gt;
   &lt;artifactId&gt;maven-war-plugin&lt;/artifactId&gt;
        &lt;version&gt;3.2.0&lt;/version&gt;          
    &lt;/plugin&gt;           
&lt;/plugins&gt;
&lt;/build&gt;
&lt;/project&gt;
</pre>
<p><b>Employee.java</b></p>
<pre class="MyCodeBlock">
package com.corejava;
import java.io.Serializable;
public class Employee implements Serializable {

private static final long serialVersionUID = 1L;
		
private int id;
private String fname;
private String lname;
private String email;

public Employee() {}

public String getFname() {
	return fname;
}

public void setFname(String fname) {
	this.fname = fname;
}

public String getLname() {
	return lname;
}

public void setLname(String lname) {
	this.lname = lname;
}

public String getEmail() {
	return email;
}

public void setEmail(String email) {
	this.email = email;
}

@Override
public String toString() {
	return "Employee [fname=" + fname + ", lname=" + lname + ", email=" + email + "]";
}
</pre>
<p><b>SpringmvcConfig.java</b></p>
<pre class="MyCodeBlock">
package com.corejava;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@Configuration
@EnableWebMvc
@ComponentScan(basePackages="com.corejava")
public class SpringmvcConfig {

@Bean
ViewResolver getViewResolver(){
InternalResourceViewResolver resolver=new InternalResourceViewResolver("/WEB-INF/view/", ".jsp");
return resolver;
}
}
</pre>
<p><b>SpringMvcDispatcherServletInitializer.java</b></p>	
<pre class="MyCodeBlock">
package com.corejava;
import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

public class SpringMvcDispatcherServletInitializer extends AbstractAnnotationConfigDispatcherServletInitializer {

	@Override
	protected Class<?>[] getRootConfigClasses() {
		return null;
	}

	@Override
	protected Class<?>[] getServletConfigClasses() {
		return new Class[]{SpringmvcConfig.class};
	}

	@Override
	protected String[] getServletMappings() {
		return new String[]{"/"};
	}

}
</pre>
<p><b>Controller.java</b></p>	
<pre class="MyCodeBlock">
package com.corejava;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@org.springframework.stereotype.Controller
@RequestMapping("home")
public class Controller {

	@GetMapping("/welcome")
	public String getNavbar() {
		return "navbar";
	}
	
	@GetMapping("/reg")
	public String getReg(Model model) {
		Employee employee=new Employee();
		model.addAttribute("employee", employee);
		return "reg";
	}
	
	@PostMapping("/submitreg2")
	public String submitreg2(@ModelAttribute("employee") Employee employee,Model model) {
		System.out.println(employee);
		model.addAttribute("message","Data Save Successfully");
		return "reg-view";
	}
}
</pre>
<p><b>navbar.jsp</b></p>
<pre class="MyCodeBlock">
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;NAVBAR&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;a href="reg"&gt;JSTL Form Tag&lt;/a&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p><b>reg.jsp</b></p>
<pre class="MyCodeBlock">
<b class="MySpecialWord"> &lt;%@ taglib uri="http://www.springframework.org/tags/form"  prefix="form"%&gt;</b>
&lt;%@ include file="navbar.jsp" %&gt;
&lt;hr&gt;
&lt;form:form action="submitreg2" modelAttribute="employee" method="post"&gt;
&lt;table&gt;
	&lt;tr&gt;
		&lt;td&gt;FName&lt;/td&gt;
		<b class="MySpecialWord">&lt;td&gt;&lt;form:input  path="fname"/&gt;&lt;/td&gt;</b>
	&lt;/tr&gt;
	&lt;tr&gt;
		&lt;td&gt;LName&lt;/td&gt;
		<b class="MySpecialWord">&lt;td&gt;&lt;form:input  path="lname"/&gt;&lt;/td&gt;</b>
	&lt;/tr&gt;
	&lt;tr&gt;
		&lt;td&gt;Email&lt;/td&gt;
		<b class="MySpecialWord">&lt;td&gt;&lt;form:input  path="email"/&gt;&lt;/td&gt;</b>
	&lt;/tr&gt;
	&lt;tr&gt;
		&lt;td colspan="1"&gt;&lt;input type="submit" value="SUBMIT"&gt;&lt;/td&gt;
	&lt;/tr&gt;
&lt;/table&gt;
&lt;/form:form&gt;
</pre>
<p><b>reg-view.jsp</b></p>
<pre class="MyCodeBlock">
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;Reg&lt;/title&gt;
&lt;/head&gt;
&lt;%@ include file="navbar.jsp" %&gt;
&lt;hr&gt;
&lt;body&gt;
&lt;p style="color:green"&gt;${ message }&lt;/p&gt;
&lt;table border="1"&gt;
	&lt;tr&gt;
		&lt;td&gt;FName&lt;/td&gt;
		<b class="MySpecialWord">&lt;td&gt;&#36;{employee.fname}&lt;/td&gt;</b>
	&lt;/tr&gt;
	&lt;tr&gt;
		&lt;td&gt;LName&lt;/td&gt;
		<b class="MySpecialWord">&lt;td&gt;&#36;{employee.fname}&lt;/td&gt;</b>
	&lt;/tr&gt;
	&lt;tr&gt;
		&lt;td&gt;Email&lt;/td&gt;
		<b class="MySpecialWord">&lt;td&gt;&#36;{employee.fname}&lt;/td&gt;</b>
	&lt;/tr&gt;
&lt;/table&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>