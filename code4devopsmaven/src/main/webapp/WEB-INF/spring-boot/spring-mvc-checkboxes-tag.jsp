<h1>How to Use JSTL  <b class="MySpecialWord">&lt;form:checkbox&gt;</b> and <b class="MySpecialWord">&lt;form:checkboxes&gt;</b> tag in Spring MVC </h1>
<p><b>Here We Use :</b></p>
<p><b>JDK : </b> Version: 1.8</p>
<p><b>IDE : </b> Eclipse IDE for Enterprise Java Developers, Version: 2020-06 </p>
<p><b>Build Tool :</b> Maven,Version: 3.2.0</p>
<p><b>Spring : </b> Version: 5.2.8</p>
<p><b>Server : </b> apache-tomcat-9.0.34</p>
<img src="${pageContext.request.contextPath}/static/img/spring-mvc-jstl/registration-form-with-jstl-checkbox-and-checkboxes.jpg">
<p><b>POM.XML</b></p>
<pre class="MyCodeBlock">
&lt;project xmlns="http://maven.apache.org/POM/4.0.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/maven-v4_0_0.xsd"&gt;
  &lt;modelVersion&gt;4.0.0&lt;/modelVersion&gt;
  &lt;groupId&gt;com.corejava&lt;/groupId&gt;
  &lt;artifactId&gt;spring-mvc-java-config-model-jstl-checkbox-checkboxes&lt;/artifactId&gt;
  &lt;packaging&gt;war&lt;/packaging&gt;
  &lt;version&gt;0.0.1-SNAPSHOT&lt;/version&gt;
  &lt;name&gt;spring-mvc-java-config-model-jstl-checkbox-checkboxes&lt;/name&gt;
  &lt;url&gt;http://maven.apache.org&lt;/url&gt;
  
  &lt;properties&gt;
    &lt;springframework.version&gt;5.2.8.RELEASE&lt;/springframework.version&gt;
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
        &lt;version&gt;3.1.0&lt;/version&gt;
    &lt;/dependency&gt;
&lt;/dependencies&gt;
  &lt;build&gt;
    &lt;finalName&gt;spring-mvc-java-config-model-jstl-checkbox-checkboxes&lt;/finalName&gt;
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
<p><b>MyCheckBox.java</b></p>
<pre class="MyCodeBlock">
package com.corejava;
import java.util.ArrayList;
import java.util.Arrays;
public class MyCheckBox {

	private boolean subscribe1;
	private String subscribe2;
	private String[] hobbies;
	ArrayList<String> collectionhobbies;
	private String[] selectedCollectionHobbies;

public MyCheckBox() {
	collectionhobbies=new ArrayList<String>();
	collectionhobbies.add("Perfume");
	collectionhobbies.add("Shoes");
	collectionhobbies.add("Knife collecting");
	collectionhobbies.add("Element collecting");
	collectionhobbies.add("Ticket collecting");
	collectionhobbies.add("Coin collecting");
}

public boolean isSubscribe1() {
	return subscribe1;
}

public void setSubscribe1(boolean subscribe1) {
	this.subscribe1 = subscribe1;
}

public String getSubscribe2() {
	return subscribe2;
}

public void setSubscribe2(String subscribe2) {
	this.subscribe2 = subscribe2;
}

public String[] getHobbies() {
	return hobbies;
}

public void setHobbies(String[] hobbies) {
	this.hobbies = hobbies;
}

public ArrayList<String> getCollectionhobbies() {
	return collectionhobbies;
}

public void setCollectionhobbies(ArrayList<String> collectionhobbies) {
	this.collectionhobbies = collectionhobbies;
}

public String[] getSelectedCollectionHobbies() {
	return selectedCollectionHobbies;
}

public void setSelectedCollectionHobbies(String[] selectedCollectionHobbies) {
	this.selectedCollectionHobbies = selectedCollectionHobbies;
}

@Override
public String toString() {
	return subscribe1 + "  " + subscribe2 + " "+ Arrays.toString(hobbies);
}

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
	
	@GetMapping("/registration-form-with-jstl-checkbox-and-checkboxes")
	public String getReg(Model model) {
		MyCheckBox myCheckBox=new MyCheckBox();
		model.addAttribute("myCheckBox", myCheckBox);
		return "registration-form-with-jstl-checkbox-and-checkboxes";
	}
	
	@PostMapping("/submit-registration-form-with-jstl-checkbox-and-checkboxes")
	public String submitreg2(@ModelAttribute("myCheckBox") MyCheckBox myCheckBox,Model model) {
		System.out.println(myCheckBox);
		model.addAttribute("message","Data Save Successfully");
		return "submit-view-registration-form-with-jstl-checkbox-and-checkboxes";
	}
}
</pre>
<p><b>navbar.jsp</b></p>
<pre class="MyCodeBlock">
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;Home&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;a href="registration-form-with-jstl-checkbox-and-checkboxes"&gt;JSTL Checkbox and Checkboxes Tag&lt;/a&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p><b>registration-form-with-jstl-checkbox-and-checkboxes.jsp</b></p>
<pre class="MyCodeBlock">
<b class="MySpecialWord">&lt;%@ taglib uri="http://www.springframework.org/tags/form"  prefix="form"%&gt;</b>
&lt;%@ include file="navbar.jsp" %&gt;
&lt;hr&gt;
&lt;form:form action="submit-registration-form-with-jstl-checkbox-and-checkboxes" modelAttribute="myCheckBox" method="post"&gt;
&lt;table border="2"&gt;
	&lt;tr&gt;
	&lt;td&gt;Case 1: if you have single check box.then use <b>&lt;form:checkbox&gt;</b> tag. 
	if you select then return true or false&lt;/td&gt;
        <b class="MySpecialWord">&lt;td&gt;&lt;form:checkbox path="subscribe1"/&gt;Subscribe1&lt;/td&gt;</b>
	&lt;/tr&gt;
	&lt;tr&gt;
	&lt;td&gt;Case 2: if you have single check box.then use <b>&lt;form:checkbox&gt;</b> tag&lt;/td&gt;
        <b class="MySpecialWord">&lt;td&gt;&lt;form:checkbox path="subscribe2" value="code4devops"/&gt;Subscribe2&lt;/td&gt;</b>
	&lt;/tr&gt;
	&lt;tr&gt;
	&lt;td&gt;Case 1: if you have multiple check boxes like hobbies. then use <b>&lt;form:checkbox&gt;</b>
	 tag&lt;/td&gt;
        &lt;td&gt;
        <b class="MySpecialWord">&lt;form:checkbox path="hobbies"  value="Cooking"/&gt;Cooking</b>
        <b class="MySpecialWord">&lt;form:checkbox path="hobbies"  value="Painting"/&gt;Painting</b>
        <b class="MySpecialWord">&lt;form:checkbox path="hobbies"  value="Coding"/&gt;Coding</b>
        <b class="MySpecialWord">&lt;form:checkbox path="hobbies"  value="Home improvement"/&gt;Home improvement</b>
        <b class="MySpecialWord">&lt;form:checkbox path="hobbies"  value="Watching movies"/&gt;Watching movies</b>
        &lt;/td&gt;
	&lt;/tr&gt;
	&lt;tr&gt;
    &lt;td&gt;Case 2: if you have multiple check boxes like hobbies. then use <b>&lt;form:checkboxes&gt;</b> 
    tag (recommended Way)&lt;/td&gt;
       &lt;td&gt;
       <b class="MySpecialWord">&lt;form:checkboxes path="selectedCollectionHobbies" items="&#36;&#123;myCheckBox.collectionhobbies&#125;"/&gt;</b>
       &lt;/td&gt;
    &lt;/tr&gt;
	&lt;tr&gt;
		&lt;td colspan="1"&gt;&lt;input type="submit" value="SUBMIT"&gt;&lt;/td&gt;
	&lt;/tr&gt;
&lt;/table&gt;
&lt;/form:form&gt;
</pre>
<p><b>submit-view-registration-form-with-jstl-checkbox-and-checkboxes.jsp</b></p>
<pre class="MyCodeBlock">
<b class="MySpecialWord">&lt;%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %&gt;</b> 
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;Registration&lt;/title&gt;
&lt;/head&gt;
&lt;%@ include file="navbar.jsp" %&gt;
&lt;hr&gt;
&lt;body&gt;
 <b class="MySpecialWord">&lt;p style="color:green"&gt;&#36;&#123; message &#125;&lt;/p&gt;</b>
&lt;table border="2"&gt;
  &lt;tr&gt;
    &lt;td&gt;Case 1: Value&lt;/td&gt;
        <b class="MySpecialWord">&lt;td&gt;&#36;&#123;myCheckBox.subscribe1&#125;&lt;/td&gt;</b>
  &lt;/tr&gt;
  &lt;tr&gt;
    &lt;td&gt;Case 2: Value&lt;/td&gt;
        <b class="MySpecialWord">&lt;td&gt;&#36;&#123;myCheckBox.subscribe2&#125;&lt;/td&gt;</b>
  &lt;/tr&gt;
  &lt;tr&gt;
    &lt;td&gt;Selected Hobbies: &lt;/td&gt;
        <b class="MySpecialWord">&lt;td&gt;
          &lt;c:forEach var="hobbie" items="&#36;&#123;myCheckBox.hobbies&#125;"&gt;
              &lt;c:out value="&#36;&#123;hobbie&#125;,"&gt;&lt;/c:out&gt;
          &lt;/c:forEach&gt;  
        &lt;/td&gt;
        </b>
  &lt;/tr&gt;
  &lt;tr&gt;
    &lt;td&gt;Selected Collection Hobbies: &lt;/td&gt;
        <b class="MySpecialWord">&lt;td&gt;
          &lt;c:forEach var="hobbie" items="&#36;&#123;myCheckBox.selectedCollectionHobbies&#125;"&gt;
              &lt;c:out value="&#36;&#123;hobbie&#125;,"&gt;&lt;/c:out&gt;
          &lt;/c:forEach&gt;  
        &lt;/td&gt;
        </b>
  &lt;/tr&gt;
  &lt;tr&gt;
    &lt;td colspan="1"&gt;&lt;input type="submit" value="SUBMIT"&gt;&lt;/td&gt;
  &lt;/tr&gt;
&lt;/table&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p><b>index.jsp</b></p>
<pre class="MyCodeBlock">
&lt;%response.sendRedirect("home/welcome");&gt;
</pre>