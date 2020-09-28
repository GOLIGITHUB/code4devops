<h1 class="blog-title"> &#9755; Setup Your Spring MVC Using fully Java Based Configuration example (fully java source code)</h1>
<img src="${pageContext.request.contextPath}/static/img/blog/spring-mvc-using-fully-java-based-configuration.jpg" />
<p><b>pom.xml</b></p>
<p><strong>if you configure your spring mvc project using java soucre code frist setup pox.xml file</strong></p>
<pre class="MyCodeBlock">
&lt;project xmlns="http://maven.apache.org/POM/4.0.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/maven-v4_0_0.xsd"&gt;
  &lt;modelVersion&gt;4.0.0&lt;/modelVersion&gt;
  &lt;groupId&gt;com&lt;/groupId&gt;
  &lt;artifactId&gt;spring-mvc-fully-java-source-code&lt;/artifactId&gt;
  &lt;version&gt;1.0&lt;/version&gt;
  &lt;packaging&gt;war&lt;/packaging&gt;
  &lt;name&gt;spring-mvc-fully-java-source-code Maven Webapp&lt;/name&gt;
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
    &lt;finalName&gt;spring-mvc-fully-java-source-code&lt;/finalName&gt;
    &lt;plugins&gt;
		&lt;plugin&gt;
		&lt;!-- Add Maven coordinates (GAV) for: maven-war-plugin --&gt;
		    &lt;groupId&gt;org.apache.maven.plugins&lt;/groupId&gt;
		    &lt;artifactId&gt;maven-war-plugin&lt;/artifactId&gt;
		    &lt;version&gt;3.2.0&lt;/version&gt;					
		&lt;/plugin&gt;						
	&lt;/plugins&gt;
  &lt;/build&gt;
&lt;/project&gt;
</pre>
<p><b>Save As SpringMvcDispatcherServletInitializer.java</b></p>
<p>web.xml file configration equel as SpringMvcDispatcherServletInitializer class file.
Here you can see web.xml file configration as SpringMvcDispatcherServletInitializer class 
and your class must be extends AbstractAnnotationConfigDispatcherServletInitializer pre-define
class</p>
<pre class="MyCodeBlock">
package com.code4devops;
import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;
public class SpringMvcDispatcherServletInitializer extends AbstractAnnotationConfigDispatcherServletInitializer{

	@Override
	protected Class<?>[] getRootConfigClasses() {
		return null;
	}

	@Override
	protected Class<?>[] getServletConfigClasses() {
		return new Class[]{ApplicationContextConfig.class};
	}

	@Override
	protected String[] getServletMappings() {
		return new String[] { "/" };
	}

}
</pre>
<p><b>ApplicationContextConfig.java</b></p>
<p>spring-mvc-dispatcher.xml file configration equel as ApplicationContextConfig class file.
Here you can see spring-mvc-dispatcher.xml file configration as ApplicationContextConfig class 
and 
</p>
<pre class="MyCodeBlock">
package com.code4devops;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
@Configuration
@EnableWebMvc
@ComponentScan(basePackages="com.code4devops")
public class ApplicationContextConfig {
		// define a bean for ViewResolver
		@Bean
		public ViewResolver viewResolver() {
			InternalResourceViewResolver viewResolver = new InternalResourceViewResolver();
			viewResolver.setPrefix("/WEB-INF/view/");
			viewResolver.setSuffix(".jsp");
			return viewResolver;
		}
}
</pre>
<p><b>MainController.java</b></p>
<pre class="MyCodeBlock">
package com.code4devops;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "home")
public class MainController {
@RequestMapping( value = "/",method = RequestMethod.GET)	
public String getHome() {
	return "home";
}
}
</pre>