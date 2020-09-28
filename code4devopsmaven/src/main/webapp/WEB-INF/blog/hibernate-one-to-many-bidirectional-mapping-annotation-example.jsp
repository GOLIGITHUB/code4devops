<h1 class="blog-title"> &#9755;Hibernate one to many Bi-Directional Mapping Annotation Example</h1>

<img src="${pageContext.request.contextPath}/static/img/blog/hibernate-one-to-many-bidirectional-mapping-annotation-example.png" 
class="img-thumbnail" 
alt="Hibernate one to many Bi-Directional Mapping Annotation">

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
	
	<b class="MySpecialWord">@OneToMany(mappedBy = "student",cascade = { CascadeType.PERSIST,
			CascadeType.MERGE,
			CascadeType.DETACH,
			CascadeType.REFRESH})</b>
	private List&lt;Coaching&gt; coachingClasses;
	
	public Student() {}
	
	public Student(String fname, String lname, String mobile, String email) {
		this.fname = fname;
		this.lname = lname;
		this.mobile = mobile;
		this.email = email;
	}
	
	public List &lt;Coaching&gt; getCoachingClasses() {
		return coachingClasses;
	}
	public void setCoachingClasses(List&lt;Coaching&gt; coachingClasses) {
		this.coachingClasses = coachingClasses;
	}
	public void myAdd(Coaching tempCoachingClass) {
		if(coachingClasses==null) {
			coachingClasses=new ArrayList&lt;Coaching&gt;();
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
	
	<b class="MySpecialWord">@Column(name="class_Name",length = 100,nullable = false)
	String className;
	
	<b class="MySpecialWord">@ManyToOne(cascade = { CascadeType.PERSIST,
			CascadeType.MERGE,
			CascadeType.DETACH,
			CascadeType.REFRESH})</b>
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
<p><b>Coaching.java</b></p>
<pre class="MyCodeBlock">
package com.code4devops;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
public class MySessionFactory{
	public static  SessionFactory getMySessionFactory() {
		Configuration configuration=new Configuration();
		Configuration configuration2=configuration.configure("hibernate.cfg.xml");
		Configuration configuration3=configuration2.addAnnotatedClass(Student.class).addAnnotatedClass(Coaching.class);
		SessionFactory factory=configuration3.buildSessionFactory();
		return factory;
	}
}
</pre>
<p><b>StudentCoachingService.java</b></p>
<pre class="MyCodeBlock">
package com.code4devops;
public interface StudentCoachingService {
public abstract void mysave();
public abstract void myview();
public abstract void myDelete();
}
</pre>
<p><b>StudentCoachingServiceImpl.java</b></p>
<pre class="MyCodeBlock">
package com.code4devops;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
public class StudentCoachingServiceImpl implements StudentCoachingService{

	@Override
	public void mysave() {
		SessionFactory sessionFactory=MySessionFactory.getMySessionFactory();
		Session session=sessionFactory.getCurrentSession();
		try {			
			session.beginTransaction();
			Student student=new Student("Anmol", "singh", "7894564567", "anmol@gmail.com");
			Coaching className1=new Coaching("Spring MVC");
			Coaching className2=new Coaching("AWS");
			Coaching className3=new Coaching("GCP");
			student.myAdd(className1);
			student.myAdd(className2);
			student.myAdd(className3);
			session.save(student);
			session.save(className1);
			session.save(className2);
			session.save(className3);
			session.getTransaction().commit();
		}catch (Exception e) {
			System.out.println(e);
		} 
		finally {
			session.close();
			sessionFactory.close();
		}
	}
	
	@Override
	public void myview() {
		int studentId=1;
		SessionFactory sessionFactory=MySessionFactory.getMySessionFactory();
		Session session=sessionFactory.getCurrentSession();
		try {
			session.beginTransaction();
			Student student=session.get(Student.class, studentId);
			if(student!=null){
				System.out.println(student);
				System.out.println(student.getCoachingClasses());
			}else {
				System.out.println(studentId+" Student ID does not exist ");
			}
			session.getTransaction().commit();
		}catch (Exception e) {
			System.out.println(e);
		} 
		finally {
			session.close();
			sessionFactory.close();
		}
	}
	
	@Override
	public void myDelete() {
		int coachingId=1;
		SessionFactory sessionFactory=MySessionFactory.getMySessionFactory();
		Session session=sessionFactory.getCurrentSession();
		try {
			session.beginTransaction();
			Coaching coaching=session.get(Coaching.class, coachingId);
			if(coaching!=null){
				session.delete(coaching);
			}else {
				System.out.println(coachingId+" Coaching ID does not exist ");
			}
			session.getTransaction().commit();
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
<p><b>App.java</b></p>
<pre class="MyCodeBlock">
package com.code4devops;
public class App {
	public static void main(String[] args) {
		StudentCoachingService service=new StudentCoachingServiceImpl();
		//service.mysave();
		service.myview();
		//service.myDelete();
	}
}
</pre>