<h1 class="blog-title"> &#9755; Setup Your Spring MVC Using XML Based Configuration example</h1>
<img src="${pageContext.request.contextPath}/static/img/blog/spring-mvc-using-fully-XML-based-configuration.jpg" />
<p><b>pom.xml</b></p>
<pre class="MyCodeBlock" >
&lt;project xmlns="http://maven.apache.org/POM/4.0.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/maven-v4_0_0.xsd"&gt;
  &lt;modelVersion&gt;4.0.0&lt;/modelVersion&gt;
  &lt;groupId&gt;com&lt;/groupId&gt;
  &lt;artifactId&gt;spring-mvc-xml-base-configuration&lt;/artifactId&gt;
  &lt;packaging&gt;war&lt;/packaging&gt;
  &lt;version&gt;0.0.1-SNAPSHOT&lt;/version&gt;
  &lt;name&gt;spring-mvc-xml-base-configuration Maven Webapp&lt;/name&gt;
  &lt;url&gt;http://maven.apache.org&lt;/url&gt;
  &lt;properties&gt;
  	&lt;springframework.version&gt;5.2.2.RELEASE&lt;/springframework.version&gt;
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
    &lt;finalName&gt;spring-mvc-xml-base-configuration&lt;/finalName&gt;
  &lt;/build&gt;
&lt;/project&gt;
</pre>
<p><b>web.xml</b></p>
<pre class="MyCodeBlock">
&lt;?xml version="1.0" encoding="UTF-8"?&gt;
&lt;web-app xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" 
xmlns="http://xmlns.jcp.org/xml/ns/javaee" 
xsi:schemaLocation="http://xmlns.jcp.org/xml/ns/javaee http://xmlns.jcp.org/xml/ns/javaee/web-app_3_1.xsd" 
id="WebApp_ID" 
version="3.1"&gt;
  &lt;display-name&gt;spring-mvc-xml-base-configuration&lt;/display-name&gt;
	&lt;!-- Configure Spring MVC Dispatcher Servlet --&gt;
	&lt;servlet&gt;
		&lt;servlet-name&gt;dispatcher&lt;/servlet-name&gt;
		&lt;servlet-class&gt;org.springframework.web.servlet.DispatcherServlet&lt;/servlet-class&gt;
		&lt;load-on-startup&gt;1&lt;/load-on-startup&gt;
	&lt;/servlet&gt;
	&lt;!-- Set up URL mapping for Spring MVC Dispatcher Servlet --&gt;
	&lt;servlet-mapping&gt;
		&lt;servlet-name&gt;dispatcher&lt;/servlet-name&gt;
		&lt;url-pattern&gt;/&lt;/url-pattern&gt;
	&lt;/servlet-mapping&gt;
&lt;/web-app&gt;
</pre>
<p><b>dispatcher-servlet.xml</b></p>
<pre class="MyCodeBlock">
&lt;?xml version="1.0" encoding="UTF-8"?&gt;
&lt;beans xmlns="http://www.springframework.org/schema/beans"
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" 
	xmlns:context="http://www.springframework.org/schema/context"
	xmlns:mvc="http://www.springframework.org/schema/mvc"
	xsi:schemaLocation="
		http://www.springframework.org/schema/beans
    	http://www.springframework.org/schema/beans/spring-beans.xsd
    	http://www.springframework.org/schema/context
    	http://www.springframework.org/schema/context/spring-context.xsd
    	http://www.springframework.org/schema/mvc
        http://www.springframework.org/schema/mvc/spring-mvc.xsd"&gt;

	&lt;!-- Add support for component scanning --&gt;
	&lt;context:component-scan base-package="com.code4devops" /&gt;

	&lt;!-- Add support for conversion, formatting and validation support --&gt;
	&lt;mvc:annotation-driven/&gt;

	&lt;!-- Define Spring MVC view resolver --&gt;
	&lt;bean
		class="org.springframework.web.servlet.view.InternalResourceViewResolver"&gt;
		&lt;property name="prefix" value="/WEB-INF/view/" /&gt;
		&lt;property name="suffix" value=".jsp" /&gt;
	&lt;/bean&gt;

&lt;/beans&gt;
</pre>
<p><b>HomeController.java</b></p>
<pre class="MyCodeBlock">
package com.code4devops;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping( value = "home")
public class HomeController {
	
	@RequestMapping( value = "/" , method = RequestMethod.GET)
	public String getHome() {
		return "home";
	}
}
</pre>
<p><b>index.jsp</b></p>
<pre>
&lt;%response.sendRedirect("home/");%&gt;
</pre>
