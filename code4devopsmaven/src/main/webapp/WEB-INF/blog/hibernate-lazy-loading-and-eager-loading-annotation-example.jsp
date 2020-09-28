<h1 class="blog-title"> &#9755;Hibernate Lazy Loading and Eager Loading Annotation Example</h1>

<img src="${pageContext.request.contextPath}/static/img/blog/hibernate-lazy-loading-and-eager-loading-annotation-example.png" 
class="img-thumbnail" 
alt="hibernate lazy loading and eager loading annotation example">
<p><b>hibernate.cfg.xml</b></p>
<pre class="MyCodeBlock">
&lt;!DOCTYPE hibernate-configuration PUBLIC
        "-//Hibernate/Hibernate Configuration DTD 3.0//EN"
        "http://www.hibernate.org/dtd/hibernate-configuration-3.0.dtd"&gt;
&lt;hibernate-configuration&gt;
    &lt;session-factory&gt;
        &lt;property name="connection.driver_class"&gt;com.mysql.cj.jdbc.Driver&lt;/property&gt;
        &lt;property name="connection.url"&gt;jdbc:mysql://localhost:3306/hibernate1?useSSL=false&amp;serverTimezone=UTC&lt;/property&gt;
        &lt;property name="connection.username"&gt;root&lt;/property&gt;
        &lt;property name="connection.password"&gt;root&lt;/property&gt;
        &lt;property name="hibernate.hbm2ddl.auto"&gt;update&lt;/property&gt;
        &lt;property name="connection.pool_size"&gt;1&lt;/property&gt;
        &lt;property name="hibernate.dialect"&gt;org.hibernate.dialect.MySQL5Dialect&lt;/property&gt;
        &lt;property name="show_sql"&gt;true&lt;/property&gt;
        &lt;property name="current_session_context_class"&gt;thread&lt;/property&gt;
     &lt;/session-factory&gt;
&lt;/hibernate-configuration&gt;
</pre>
<p><b>Student.java</b></p>
<pre class="MyCodeBlock">
package com.code4devops;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
<b class="MySpecialWord">@Entity</b>
<b class="MySpecialWord">@Table</b>
public class Student {
	
	<b class="MySpecialWord">@Id</b>
	<b class="MySpecialWord">@GeneratedValue(strategy = GenerationType.IDENTITY)</b>
	<b class="MySpecialWord">@Column(name="student_id",length = 10,nullable = false)</b>
	private int id;
	
	<b class="MySpecialWord">@Column(name="first_name",length = 100,nullable = false)</b>
	private String fname;
	
	<b class="MySpecialWord">@Column(name="Last_name",length = 100,nullable = false)</b>
	private String lname;
	
	<b class="MySpecialWord">@Column(name="mobile",length = 100,nullable = false)</b>
	private String mobile;
	
	<b class="MySpecialWord">@Column(name="email",length = 100,nullable = false)</b>
	private String email;
	
	<b class="MySpecialWord">@OneToMany(fetch = FetchType.EAGER,mappedBy = "student",cascade = { CascadeType.PERSIST,CascadeType.MERGE,CascadeType.DETACH,CascadeType.REFRESH})</b>
	<b class="MySpecialWord">//@OneToMany(fetch = FetchType.LAZY,mappedBy = "student",cascade = { CascadeType.PERSIST,CascadeType.MERGE,CascadeType.DETACH,CascadeType.REFRESH})</b>
	private List<Coaching> coachingClasses;
	
	public Student() {}
	
	public Student(String fname, String lname, String mobile, String email) {
		this.fname = fname;
		this.lname = lname;
		this.mobile = mobile;
		this.email = email;
	}	
	public List&lt;Coaching&lt; getCoachingClasses() {
		return coachingClasses;
	}
	public void setCoachingClasses(List&lt;Coaching&lt; coachingClasses) {
		this.coachingClasses = coachingClasses;
	}
	public void myAdd(Coaching tempCoachingClass) {
		if(coachingClasses==null) {
			coachingClasses=new ArrayList&lt;Coaching&lt;();
		}
		coachingClasses.add(tempCoachingClass);
		tempCoachingClass.setStudent(this);
	}
	@Override
	public String toString() {
		return "Student [id=" + id + ", fname=" + fname + ", lname=" + lname + ", mobile=" + mobile + ", email=" + email
				+ ", coachingClasses=" + coachingClasses + "]";
	}
}
</pre>
<p><b>Coaching.java</b></p>
<pre class="MyCodeBlock">
package com.code4devops;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

<b class="MySpecialWord">@Entity</b>
<b class="MySpecialWord">@Table</b>
public class Coaching{
	
	<b class="MySpecialWord">@Id</b>
	<b class="MySpecialWord">@GeneratedValue(strategy = GenerationType.IDENTITY)</b>
	<b class="MySpecialWord">@Column(name="Coaching_id",length = 10,nullable = false)</b>
	int id;
	
	<b class="MySpecialWord">@Column(name="class_Name",length = 100,nullable = false)</b>
	String className;
	
	<b class="MySpecialWord">@ManyToOne(cascade = { CascadeType.PERSIST,CascadeType.MERGE,CascadeType.DETACH,CascadeType.REFRESH})</b>
	<b class="MySpecialWord">@JoinColumn(name = "student_id")</b>
	private Student student;
	
	public Coaching() {}
	
	public Coaching(String className) {
		this.className=className;
	}
	public Student getStudent() {
		return student;
	}
	public void setStudent(Student student) {
		this.student = student;
	}
	@Override
	public String toString() {
		return "Coaching [id=" + id + ", className=" + className + "]";
	}
}
</pre>
<p><b>App.java</b></p>
<pre class="MyCodeBlock">
package com.code4devops;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
public class App {
public static void main(String[] args) {
		Configuration configuration=new Configuration();
		Configuration configuration2=configuration.configure("hibernate.cfg.xml");
		Configuration configuration3=configuration2.addAnnotatedClass(Student.class).addAnnotatedClass(Coaching.class);
		SessionFactory sessionFactory=configuration3.buildSessionFactory();
		int studentId=1;
		Session session=sessionFactory.getCurrentSession();
		try {
			session.beginTransaction();
			Student student=session.get(Student.class, studentId);
			if(student!=null){
				System.out.println("Code4devops Student : "+student);
				System.out.println("Code4devops Coaching : "+student.getCoachingClasses());
			}else {
				System.out.println(studentId+" Student ID does not exist ");
			}
			System.out.println("Code4devops DONE");
		}catch (Exception e) {
			System.out.println(e);
		} 
		finally {
			session.close();
			sessionFactory.close();
		}
		
	}
			
}
</pre>