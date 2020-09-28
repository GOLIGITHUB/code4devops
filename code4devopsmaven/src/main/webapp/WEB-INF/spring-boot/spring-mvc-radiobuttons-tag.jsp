<h1>How to Use JSTL  <b class="MySpecialWord">&lt;form:radiobutton&gt;</b> and <b class="MySpecialWord">&lt;form:radiobuttons&gt;</b> tag in Spring MVC </h1>
<p><b>Here We Use :</b></p>
<p><b>JDK : </b> Version: 1.8</p>
<p><b>IDE : </b> Eclipse IDE for Enterprise Java Developers, Version: 2020-06 </p>
<p><b>Build Tool :</b> Maven,Version: 3.2.0</p>
<p><b>Spring : </b> Version: 5.2.8</p>
<p><b>Server : </b> apache-tomcat-9.0.34</p>
<img src="${pageContext.request.contextPath}/static/img/spring-mvc-jstl/registration-form-with-jstl-radiobutton-and-radiobuttons.jpg">
<p><b>POM.XML</b></p>
<pre  class="MyCodeBlock">
&lt;project xmlns="http://maven.apache.org/POM/4.0.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/maven-v4_0_0.xsd"&gt;
  &lt;modelVersion&gt;4.0.0&lt;/modelVersion&gt;
  &lt;groupId&gt;com.corejava&lt;/groupId&gt;
  &lt;artifactId&gt;spring-mvc-java-config-model-jstl-radiobutton-radiobuttons&lt;/artifactId&gt;
  &lt;packaging&gt;war&lt;/packaging&gt;
  &lt;version&gt;0.0.1-SNAPSHOT&lt;/version&gt;
  &lt;name&gt;spring-mvc-java-config-model-jstl-radiobutton-radiobuttons&lt;/name&gt;
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
        &lt;version&gt;&#36;&#123;springframework.version&#125;&lt;/version&gt;
    &lt;/dependency&gt;
    &lt;dependency&gt;
        &lt;groupId&gt;javax.servlet&lt;/groupId&gt;
        &lt;artifactId&gt;javax.servlet-api&lt;/artifactId&gt;
        &lt;version&gt;3.1.0&lt;/version&gt;
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
<p><b>MyRadiobutton.java</b></p>
<pre  class="MyCodeBlock">
package com.corejava;
import java.util.ArrayList;
import java.util.List;
public class MyRadiobutton  {
private String gender;
private String selectLanguageList;
private List&lt;String&gt; languageList;
public MyRadiobutton() {
	languageList=new ArrayList&lt;String&gt;();
	languageList.add("Core Java");
	languageList.add("JSP");
	languageList.add("Servlet");
	languageList.add("Core Spring");
	languageList.add("Spring MVC");
	languageList.add("Spring Secuiry");
	languageList.add("Core Python");
	languageList.add("Advance Python");
	languageList.add("Linux");
}
public String getGender() {
	return gender;
}
public void setGender(String gender) {
	this.gender = gender;
}
public String getSelectLanguageList() {
	return selectLanguageList;
}
public void setSelectLanguageList(String selectLanguageList) {
	this.selectLanguageList = selectLanguageList;
}
public List&lt;String&gt; getLanguageList() {
	return languageList;
}
public void setLanguageList(List&lt;String&gt; languageList) {
	this.languageList = languageList;
}

@Override
public String toString() {
	return  gender + "|" +selectLanguageList+ "|" + languageList;
}
}
</pre>
<p><b>SpringmvcConfig.java</b></p>
<pre  class="MyCodeBlock">
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
<pre  class="MyCodeBlock">
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
<pre  class="MyCodeBlock">
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
	
	@GetMapping("/registration-form-with-jstl-radiobutton-and-radiobuttons")
	public String getReg(Model model) {
		MyRadiobutton myRadiobutton=new MyRadiobutton();
		model.addAttribute("myRadiobutton", myRadiobutton);
		return "registration-form-with-jstl-radiobutton-and-radiobuttons";
	}
	
	@PostMapping("/submit-view-registration-form-with-jstl-radiobutton-and-radiobuttons")
	public String submitreg2(@ModelAttribute("myRadiobutton") MyRadiobutton myRadiobutton,Model model) {
		System.out.println(myRadiobutton);
		model.addAttribute("message","Data Save Successfully");
		return "submit-view-registration-form-with-jstl-radiobutton-and-radiobuttons";
	}
}
</pre>
<p><b>navbar.jsp</b></p>
<pre  class="MyCodeBlock">
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;Home&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;a href="registration-form-with-jstl-radiobutton-and-radiobuttons"&gt;JSTL radiobutton and radiobuttons Tag&lt;/a&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p><b>registration-form-with-jstl-radiobutton-and-radiobuttons.jsp</b></p>
<pre  class="MyCodeBlock">
 <b class="MySpecialWord">&lt;%@ taglib uri="http://www.springframework.org/tags/form"  prefix="form"%&gt;</b>
&lt;%@ include file="navbar.jsp" %&gt;
&lt;hr&gt;
&lt;form:form action="submit-view-registration-form-with-jstl-radiobutton-and-radiobuttons" modelAttribute="myRadiobutton" method="post"&gt;
&lt;table border="2"&gt;
  &lt;tr&gt;
    &lt;td&gt;Select Gender:&lt;/td&gt;
        &lt;td&gt;
         <b class="MySpecialWord">&lt;form:radiobutton path="gender" value="Male"/&gt;Male</b>
         <b class="MySpecialWord">&lt;form:radiobutton path="gender" value="Female"/&gt;Female</b>
        &lt;/td&gt;
  &lt;/tr&gt;
  &lt;tr&gt;
       &lt;td&gt;Select One Language&lt;/td&gt;
       &lt;td&gt;
        <b class="MySpecialWord">&lt;form:radiobuttons path="selectLanguageList" items="&#36;&#123;myRadiobutton.languageList&#125;"/&gt;</b>
       &lt;/td&gt;
    &lt;/tr&gt;
  &lt;tr&gt;
    &lt;td colspan="1"&gt;&lt;input type="submit" value="SUBMIT"&gt;&lt;/td&gt;
  &lt;/tr&gt;
&lt;/table&gt;
&lt;/form:form&gt;
</pre>
<p><b>submit-view-registration-form-with-jstl-radiobutton-and-radiobuttons.jsp</b></p>
<pre  class="MyCodeBlock">
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
    &lt;td&gt;Gender&lt;/td&gt;
         <b class="MySpecialWord">&lt;td&gt;&#36;&#123;myRadiobutton.gender&#125;&lt;/td&gt;</b>
  &lt;/tr&gt;
  &lt;tr&gt;
    &lt;td&gt;Selected Hobbies: &lt;/td&gt;
         <b class="MySpecialWord">&lt;td&gt;&#36;&#123;myRadiobutton.selectLanguageList&#125;&lt;/td&gt;</b>
    &lt;/tr&gt;
&lt;/table&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p><b>index.jsp</b></p>
<pre  class="MyCodeBlock">
&lt;%response.sendRedirect("home/welcome");%&gt;
</pre>

