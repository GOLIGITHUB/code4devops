<h1 class="blog-title">SpringBoot CRUD API with JPA and Thymeleaf</h1>
<p>in this blog we create spring boot crud operation using <b class="MySpecialWord"> @controller annotation </b> and <b class="MySpecialWord">Thymeleaf Template engine.</b> 
Thymeleaf can work both in web and non-web environments <a href="http://www.thymeleaf.org/" target="_blank">for More Detail</a></p>
<table class="table table-hover">
	<tr>
		<th>HTTP Method</th>
		<th>Url Mapping</th>
		<th>CRUD Action</th>
	</tr>
	<tr>
		<td>POST</td>
		<td>customer/customersave</td>
		<td>Create a new customer</td>
	</tr>
	<tr>
		<td>GET</td>
		<td>customer/all-customer-list</td>
		<td>Read a list of customers</td>
	</tr>
	<tr>
		<td>GET</td>
		<td>customer/single-customer-view</td>
		<td>Read a single customer</td>
	</tr>
	<tr>
		<td>POST</td>
		<td>customer/customersave</td>
		<td>Update an exiting customer</td>
	</tr>
	<tr>
		<td>DELETE</td>
		<td>customer/delete</td>
		<td>Delete an existing customer</td>
	</tr>
</table>
<img src="${pageContext.request.contextPath}/static/img/blog/spring-boot-crud-example-with-jpa-mysql-thymeleaf.jpg">
<p><b>POM.XML</b></p>
<pre class="MyCodeBlock">
	<code>
	&lt;?xml version="1.0" encoding="UTF-8"?&gt;
&lt;project xmlns="http://maven.apache.org/POM/4.0.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 https://maven.apache.org/xsd/maven-4.0.0.xsd"&gt;
	&lt;modelVersion&gt;4.0.0&lt;/modelVersion&gt;
	&lt;parent&gt;
		&lt;groupId&gt;org.springframework.boot&lt;/groupId&gt;
		&lt;artifactId&gt;spring-boot-starter-parent&lt;/artifactId&gt;
		&lt;version&gt;2.3.0.RELEASE&lt;/version&gt;
		&lt;relativePath/&gt; &lt;!-- lookup parent from repository --&gt;
	&lt;/parent&gt;
	&lt;groupId&gt;com.code4devops&lt;/groupId&gt;
	&lt;artifactId&gt;SpringBootRestApiWithHibernate&lt;/artifactId&gt;
	&lt;version&gt;0.0.1-SNAPSHOT&lt;/version&gt;
	&lt;name&gt;SpringBootRestApiWithHibernate&lt;/name&gt;
	&lt;description&gt;Spring Boot RestApi With Hibernate&lt;/description&gt;
	&lt;properties&gt;
		&lt;java.version&gt;1.8&lt;/java.version&gt;
	&lt;/properties&gt;
	&lt;dependencies&gt;
		&lt;dependency&gt;
			&lt;groupId&gt;org.springframework.boot&lt;/groupId&gt;
			&lt;artifactId&gt;spring-boot-starter-thymeleaf&lt;/artifactId&gt;
		&lt;/dependency&gt;
		&lt;dependency&gt;
			&lt;groupId&gt;org.springframework.boot&lt;/groupId&gt;
			&lt;artifactId&gt;spring-boot-starter-data-jpa&lt;/artifactId&gt;
		&lt;/dependency&gt;
		&lt;dependency&gt;
			&lt;groupId&gt;org.springframework.boot&lt;/groupId&gt;
			&lt;artifactId&gt;spring-boot-starter-web&lt;/artifactId&gt;
		&lt;/dependency&gt;
		&lt;dependency&gt;
			&lt;groupId&gt;org.springframework.boot&lt;/groupId&gt;
			&lt;artifactId&gt;spring-boot-devtools&lt;/artifactId&gt;
			&lt;scope&gt;runtime&lt;/scope&gt;
			&lt;optional&gt;true&lt;/optional&gt;
		&lt;/dependency&gt;
		&lt;dependency&gt;
			&lt;groupId&gt;mysql&lt;/groupId&gt;
			&lt;artifactId&gt;mysql-connector-java&lt;/artifactId&gt;
			&lt;scope&gt;runtime&lt;/scope&gt;
		&lt;/dependency&gt;
		&lt;dependency&gt;
			&lt;groupId&gt;org.springframework.boot&lt;/groupId&gt;
			&lt;artifactId&gt;spring-boot-starter-test&lt;/artifactId&gt;
			&lt;scope&gt;test&lt;/scope&gt;
			&lt;exclusions&gt;
				&lt;exclusion&gt;
					&lt;groupId&gt;org.junit.vintage&lt;/groupId&gt;
					&lt;artifactId&gt;junit-vintage-engine&lt;/artifactId&gt;
				&lt;/exclusion&gt;
			&lt;/exclusions&gt;
		&lt;/dependency&gt;
		&lt;dependency&gt;
			&lt;groupId&gt;org.springframework.boot&lt;/groupId&gt;
			&lt;artifactId&gt;spring-boot-configuration-processor&lt;/artifactId&gt;
			&lt;optional&gt;true&lt;/optional&gt;
		&lt;/dependency&gt;
	&lt;/dependencies&gt;

	&lt;build&gt;
		&lt;plugins&gt;
			&lt;plugin&gt;
				&lt;groupId&gt;org.springframework.boot&lt;/groupId&gt;
				&lt;artifactId&gt;spring-boot-maven-plugin&lt;/artifactId&gt;
			&lt;/plugin&gt;
		&lt;/plugins&gt;
	&lt;/build&gt;
&lt;/project&gt;
	</code>
</pre>
<p><b>Customer.java</b></p>
<pre class="MyCodeBlock">
	<code>
package com.code4devops.entity;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import com.fasterxml.jackson.annotation.JsonFormat;

<b class="MySpecialWord">@Entity
<b class="MySpecialWord">@Table(name = "customer_detail")
public class Customer {

	<b class="MySpecialWord">@Id</b>
	<b class="MySpecialWord">@GeneratedValue(strategy = GenerationType.IDENTITY)</b>
	<b class="MySpecialWord">@Column(name = "customer_id", length = 10, nullable = false)</b>
	private int customer_id;
	
	<b class="MySpecialWord">@Column(name = "customer_fname", length = 45, nullable = true)</b>
	private String customer_fname;
	
	<b class="MySpecialWord">@Column(name = "customer_lname", length = 45, nullable = true)</b>
	private String customer_lname;
	
	<b class="MySpecialWord">@Column(name = "customer_mobile", length = 45, nullable = true)</b>
	private String customer_mobile;
	
	<b class="MySpecialWord">@Column(name = "customer_email", length = 45, nullable = true)</b>
	private String customer_email;
	
	<b class="MySpecialWord">@Column(name = "customer_join_date", length = 45, nullable = true)</b>
	@JsonFormat(pattern="yyyy-MM-dd")
    private String customer_join_date; 
	
	public Customer() {}
	
	public Customer(String customer_fname, String customer_lname, String customer_mobile, String customer_email) {
		this.customer_fname = customer_fname;
		this.customer_lname = customer_lname;
		this.customer_mobile = customer_mobile;
		this.customer_email = customer_email;
	}
	
	public int getCustomer_id() {
		return customer_id;
	}

	public void setCustomer_id(int customer_id) {
		this.customer_id = customer_id;
	}

	public String getCustomer_fname() {
		return customer_fname;
	}

	public void setCustomer_fname(String customer_fname) {
		this.customer_fname = customer_fname;
	}

	public String getCustomer_lname() {
		return customer_lname;
	}

	public void setCustomer_lname(String customer_lname) {
		this.customer_lname = customer_lname;
	}

	public String getCustomer_mobile() {
		return customer_mobile;
	}

	public void setCustomer_mobile(String customer_mobile) {
		this.customer_mobile = customer_mobile;
	}

	public String getCustomer_email() {
		return customer_email;
	}

	public void setCustomer_email(String customer_email) {
		this.customer_email = customer_email;
	}

	public String getCustomer_join_date() {
		return customer_join_date;
	}

	public void setCustomer_join_date(String customer_join_date) {
		this.customer_join_date = customer_join_date;
	}

	@Override
	public String toString() {
		return  customer_id + "|" + customer_fname + "|"+ customer_lname + "|" + customer_mobile + "|" + customer_email+ "|" + customer_join_date;
	}
}	
	</code>
</pre>
<p><b>application.properties</b></p>
<pre class="MyCodeBlock">
spring.datasource.url=jdbc:mysql://localhost:3306/spring_boot _build_a_rest_api_with_hibernate?useSSL=false&serverTimezone=UTC
spring.datasource.username=root
spring.datasource.password=root
</pre>
<p><b>CustomerDataAccessObject.java</b></p>
<pre class="MyCodeBlock">
package com.code4devops.dao;
import java.util.List;
import com.code4devops.entity.Customer;
public interface CustomerDataAccessObject {
	public abstract List&lt;Customer&gt; findAll();
	public abstract Customer findById(int customerId);
	public abstract void save(Customer customer);
	public abstract void deleteById(int customerId);
	
}
</pre>
<p><b>CustomerDataAccessObjectImplementation.java</b></p>
<pre class="MyCodeBlock">
	<code>
package com.code4devops.dao;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.Query;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.code4devops.entity.Customer;

@Repository
public class CustomerDataAccessObjectImplementation implements CustomerDataAccessObject{

	@Autowired
	private EntityManager entityManager;
	
	@Override
	public List&lt;Customer&gt; findAll() {
		
		//get the current hibernate session
		Session session=entityManager.unwrap(Session.class);
		
		//create a query
		//table name same as class name here in query it case sensitive
		Query	theQuery=session.createQuery("from Customer", Customer.class);
						
		//execute query and get result list
		List&lt;Customer&gt; customerList= theQuery.getResultList();
						
		//return the results
		return customerList;
	}

	@Override
	public Customer findById(int customerId) {
		
		//get the current hibernate session
		Session session=entityManager.unwrap(Session.class);
		
		//get the Customer Object by customerId
		Customer customer=session.get(Customer.class, customerId);
													
		//return the results
		return customer;
	}

	@Override
	public void save(Customer customer) {
		
		//get the current hibernate session
		Session session=entityManager.unwrap(Session.class);
		
		//Remember One Thing : if id=0 the insert else update
		session.saveOrUpdate(customer);
	}

	@Override
	public void deleteById(int customerId) {
		
		//get the current hibernate session
		Session session=entityManager.unwrap(Session.class);
		
		//delete Object with primary key
		Query theQuery = session.createQuery("delete from Customer where customer_id=:customer_id");
				
		theQuery.setParameter("customer_id", customerId);
				
		theQuery.executeUpdate();
	}
}
	</code>
</pre>
<p><b>CustomerService.java</b></p>
<pre class="MyCodeBlock">
<code>
	package com.code4devops.service;
	import java.util.List;
	import com.code4devops.entity.Customer;
	public interface CustomerService {
	
	public abstract List&lt;Customer&gt; findAll();
	public abstract Customer findById(int customerId);
	public abstract void save(Customer Customer);
	public abstract void deleteById(int customerId);
	
	}
</code>
</pre>
<p><b>CustomerServiceImplementation.java</b></p>
<pre class="MyCodeBlock">
	<code>
package com.code4devops.service;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.code4devops.dao.CustomerDataAccessObject;
import com.code4devops.entity.Customer;

@Service
public class CustomerServiceImplementation implements CustomerService{

	@Autowired
	private CustomerDataAccessObject customerDataAccessObject;
		
	@Override
	@Transactional
	public List&lt;Customer&gt; findAll() {
		return customerDataAccessObject.findAll();
	}

	@Override
	@Transactional
	public Customer findById(int customerId) {
		return customerDataAccessObject.findById(customerId);
	}

	@Override
	@Transactional
	public void save(Customer customer) {
		customerDataAccessObject.save(customer);
		
	}

	@Override
	@Transactional
	public void deleteById(int customerId) {
		customerDataAccessObject.deleteById(customerId);
		
	}
}
	
	
	</code>
</pre>
<p><b>index.html</b></p>
<pre class="MyCodeBlock">
&lt;meta http-equiv="refresh" content="0;URL='customer/all-customer-list'"&gt;
</pre>
<p><b>customer-from.html</b></p>
<pre class="MyCodeBlock">
&lt;!DOCTYPE html&gt;
&lt;html xmlns:th="http://www.thymeleaf.org" &gt;
&lt;head&gt;
&lt;meta charset="UTF-8"&gt;
&lt;title&gt;All Customer List&lt;/title&gt;
&lt;link rel="stylesheet" th:href="@{/css/bootstrap.min.css}"&gt;
&lt;script type="text/javascript" th:src="@{/js/bootstrap.min.js}"&gt;&lt;/script&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;nav class="navbar navbar-inverse"&gt;
  &lt;div class="container-fluid"&gt;
    &lt;div class="navbar-header"&gt;
      &lt;a class="navbar-brand" href="#"&gt;CRM&lt;/a&gt;
    &lt;/div&gt;
    &lt;ul class="nav navbar-nav"&gt;
      &lt;li class="active"&gt;&lt;a th:href="@{/customer/all-customer-list}"&gt;Customer List&lt;/a&gt;&lt;/li&gt;
      &lt;li&gt;&lt;a th:href="@{/customer/customer-from}"&gt;Add Customer&lt;/a&gt;&lt;/li&gt;
    &lt;/ul&gt;
    &lt;ul class="nav navbar-nav navbar-right"&gt;
      &lt;li&gt;&lt;a href="#"&gt;&lt;span class="glyphicon glyphicon-user"&gt;&lt;/span&gt; Sign Up&lt;/a&gt;&lt;/li&gt;
      &lt;li&gt;&lt;a href="#"&gt;&lt;span class="glyphicon glyphicon-log-in"&gt;&lt;/span&gt; Login&lt;/a&gt;&lt;/li&gt;
    &lt;/ul&gt;
  &lt;/div&gt;
&lt;/nav&gt;
&lt;div class="container"&gt;
&lt;form action="#" th:action="@{customersave}" th:object="${customer}" method="post"&gt;
&lt;input type="hidden" th:field="*{customer_id}"&gt;
&lt;div class="row"&gt;
	  &lt;div class="col-sm-6"&gt;
	  	&lt;div class="form-group"&gt;
	  		&lt;input type="text" th:field="*{customer_fname}"  class="form-control" placeholder="customer first name"&gt;
	  	&lt;/div&gt;
	  &lt;/div&gt;
	  &lt;div class="col-sm-6"&gt;
	  	&lt;div class="form-group"&gt;
	  		&lt;input type="text" th:field="*{customer_lname}" class="form-control"  placeholder="customer last name"&gt;
	  	&lt;/div&gt;	
	  &lt;/div&gt;
&lt;/div&gt;
&lt;div class="row"&gt;
	  &lt;div class="col-sm-6"&gt;
	  	&lt;div class="form-group"&gt;
	  		&lt;input type="text" th:field="*{customer_mobile}" class="form-control"  placeholder="customer mobile"&gt;
	  	&lt;/div&gt;
	  &lt;/div&gt;
	  &lt;div class="col-sm-6"&gt;
	  	&lt;div class="form-group"&gt;
	  		&lt;input type="text" th:field="*{customer_email}" class="form-control"  placeholder="custome email"&gt;
	  	&lt;/div&gt;	
	  &lt;/div&gt;
&lt;/div&gt;
&lt;div class="row"&gt;
	  &lt;div class="col-sm-6"&gt;
	  	&lt;div class="form-group"&gt;
	  		&lt;input type="date" th:field="*{customer_join_date}" class="form-control"  placeholder="customer join date"&gt;
	  	&lt;/div&gt;	
	  &lt;/div&gt;
	  &lt;div class="col-sm-6"&gt;
	  	&lt;div class="form-group"&gt;
	  		&lt;button type="submit" class="btn btn-primary btn-sm mb-3"&gt;SAVE&lt;/button&gt;
		&lt;/div&gt;
	  &lt;/div&gt;
&lt;/div&gt;
&lt;/form&gt;
&lt;/div&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p><b>customer-list.html</b></p>
<pre class="MyCodeBlock">
&lt;!DOCTYPE html&gt;
&lt;html xmlns:th="http://www.thymeleaf.org" &gt;
&lt;head&gt;
&lt;meta charset="UTF-8"&gt;
&lt;title&gt;All Customer List&lt;/title&gt;
&lt;link rel="stylesheet" th:href="@{/css/bootstrap.min.css}"&gt;
&lt;script type="text/javascript" th:src="@{/js/bootstrap.min.js}"&gt;&lt;/script&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;nav class="navbar navbar-inverse"&gt;
  &lt;div class="container-fluid"&gt;
    &lt;div class="navbar-header"&gt;
      &lt;a class="navbar-brand" href="#"&gt;CRM&lt;/a&gt;
    &lt;/div&gt;
    &lt;ul class="nav navbar-nav"&gt;
      &lt;li class="active"&gt;&lt;a th:href="@{/customer/all-customer-list}"&gt;Customer List&lt;/a&gt;&lt;/li&gt;
      &lt;li&gt;&lt;a th:href="@{/customer/customer-from}"&gt;Add Customer&lt;/a&gt;&lt;/li&gt;
    &lt;/ul&gt;
    &lt;ul class="nav navbar-nav navbar-right"&gt;
      &lt;li&gt;&lt;a href="#"&gt;&lt;span class="glyphicon glyphicon-user"&gt;&lt;/span&gt; Sign Up&lt;/a&gt;&lt;/li&gt;
      &lt;li&gt;&lt;a href="#"&gt;&lt;span class="glyphicon glyphicon-log-in"&gt;&lt;/span&gt; Login&lt;/a&gt;&lt;/li&gt;
    &lt;/ul&gt;
  &lt;/div&gt;
&lt;/nav&gt;
&lt;div class="container"&gt;
&lt;table class="table table-bordered table-striped"&gt;
&lt;thead class="thead-dark"&gt;
&lt;tr&gt;
	&lt;th&gt;Customer ID&lt;/th&gt;
	&lt;th&gt;Customer FName&lt;/th&gt;
	&lt;th&gt;customer LName&lt;/th&gt;
	&lt;th&gt;Customer Mobile&lt;/th&gt;
	&lt;th&gt;Customer Email&lt;/th&gt;
	&lt;th&gt;Customer Join Date&lt;/th&gt;
	&lt;th&gt;UPdate&lt;/th&gt;
&lt;/tr&gt;
&lt;/thead&gt;
&lt;tr th:each="tempCustomer : ${customerlist}"&gt;
&lt;td th:text="${tempCustomer.customer_id}"/&gt;
&lt;td th:text="${tempCustomer.customer_fname}"/&gt;
&lt;td th:text="${tempCustomer.customer_lname}"/&gt;
&lt;td th:text="${tempCustomer.customer_mobile}"/&gt;
&lt;td th:text="${tempCustomer.customer_email}"/&gt;
&lt;td th:text="${tempCustomer.customer_join_date}"/&gt;
&lt;td&gt;&lt;a th:href="@{/customer/single-customer-view(customer_id=${tempCustomer.customer_id})}" class="btn btn-primary btn-sm mb-3"&gt;Update&lt;/a&gt;&lt;/td&gt;
&lt;td&gt;&lt;a th:href="@{/customer/delete(customer_id=${tempCustomer.customer_id})}" class="btn btn-danger btn-sm mb-3"
		   onclick="if(!(confirm('Are you sure you want to delete this custome'))) return false"&gt;Delete&lt;/a&gt;&lt;/td&gt;
&lt;/tr&gt;	
&lt;/table&gt;
&lt;!-- &lt;a th:href="@{/customer/customer-from}" class="btn btn-primary btn-sm mb-3"&gt;Add Customer&lt;/a&gt; --&gt;
&lt;/div&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p><b>ControllerForCustomer.java</b></p>
<pre class="MyCodeBlock">
<code >
package com.code4devops;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.code4devops.entity.Customer;
import com.code4devops.service.CustomerService;

@Controller
@RequestMapping("customer")
public class ControllerForCustomer {
	
@Autowired
private CustomerService customerService;
		
		
@GetMapping("/all-customer-list")
public String getAllCustomerList(Model model) {
	 List&lt;Customer&gt; list = customerService.findAll();
	 model.addAttribute("customerlist",list);
return "customer-list";
}
				
@GetMapping("/customer-from")
public String getCustomerFrom(Model model) {
	Customer customer=new Customer();
	model.addAttribute("customer",customer);
return "customer-from";
}
		
@PostMapping("/customersave")
public  String getCustomerSave(@ModelAttribute("customer") Customer theCustomer) {
	System.out.println(theCustomer);
	customerService.save(theCustomer);
return "redirect:all-customer-list";
}
				
@GetMapping("/single-customer-view")
public String getSingleCustomerView(@RequestParam("customer_id") int customer_id, Model model) {
	Customer customer= customerService.findById(customer_id);
	model.addAttribute("customer", customer);
return "customer-from";
}
			
@GetMapping("/delete")
public String getEmployee(@RequestParam("customer_id") int customer_id) {
	customerService.deleteById(customer_id);
	return "redirect:all-customer-list";
}
	
}
</code>
</pre>
<p><b>SpringBootSecurityWithThymleafANDHibernate.java</b></p>
<pre class="MyCodeBlock">
package com.code4devops;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class SpringBootSecurityWithThymleafANDHibernate {

	public static void main(String[] args) {
		SpringApplication.run(SpringBootSecurityWithThymleafANDHibernate.class, args);
	}

}
</pre>