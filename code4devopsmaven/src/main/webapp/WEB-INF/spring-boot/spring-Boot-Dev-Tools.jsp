<h1><b>About Dev tool in Spring Boot</b></h1>
<p>When running Spring Boot Applications that time If you make Change to your Source code. Then you have to manually restart your application</p>
<h2>Now, When use DevTools in Spring Boot</h2>
<p>when we use devtools in spring boot So no need to restart your server manually. 
that means dev tools restart your server automatically when you change in your source code. 
for devtools we add one dependency in our POM.XMl files </p>
<p><b>POM.XML</b></p>
<pre>
&lt;dependencies&gt;
    &lt;dependency&gt;
        &lt;groupId&gt;org.springframework.boot&lt;/groupId&gt;
        &lt;artifactId&gt;spring-boot-devtools&lt;/artifactId&gt;
        &lt;optional&gt;true&lt;/optional&gt;
    &lt;/dependency&gt;
&lt;/dependencies&gt;
</pre>	
<p><strong>	if you want to disable your spring boot dev tools dependency properties .then write in your application.properties</strong>
<pre>
# in application.properties
spring.devtools.restart.enabled=false
</pre>
<p><strong>	if you want to disable your spring boot dev tools dependency properties .Using Core Spring boot</strong>
<pre>
public static void main(String[] args) {
    System.setProperty("spring.devtools.restart.enabled", "false");
    SpringApplication.run(MyApp.class, args);
}
</pre>
<p><a href="https://docs.spring.io/spring-boot/docs/current/reference/htmlsingle/#using-boot-devtools" target="_blank">For More Detail about  DevTools</a></p>
