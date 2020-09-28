<h1 class="blog-title"> &#9755;Hibernate one to one Uni-Directional Mapping Annotation Example</h1>
<img src="${pageContext.request.contextPath}/static/img/blog/hibernate-one-to-one-unidirectional-mapping-annotation-example.PNG" class="img-thumbnail" alt="Hibernate one to one Uni-Directional Mapping Annotation">
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
<p><b>Trainer.java</b></p>
<pre class="MyCodeBlock">
package com.code4devops;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

<b class="MySpecialWord">@Entity</b>
<b class="MySpecialWord">@Table</b>
public class Trainer {
	
	<b class="MySpecialWord">@Id</b>
	<b class="MySpecialWord">@GeneratedValue(strategy = GenerationType.IDENTITY)</b>
	<b class="MySpecialWord">@Column(name = "id",length = 10,nullable = false)</b>
	private int id;

	<b class="MySpecialWord">@Column(name = "first_name",length = 50,nullable = false)</b>
	private String first_name;
	
	<b class="MySpecialWord">@Column(name = "last_name",length = 50,nullable = false)</b>
	private String last_name;
	
	<b class="MySpecialWord">@Column(name = "email",length = 50,nullable = false)</b>
	private String email;
	
	<b class="MySpecialWord">@OneToOne(cascade = CascadeType.ALL)</b>
	<b class="MySpecialWord">@JoinColumn(name = "trainerDetailId")</b>
	private TrainerDetail trainerDetail;
	
	public Trainer() {
		System.out.println("in case of View And Delete default constructor requried");
	}

	public Trainer(String first_name, String last_name, String email) {
		this.first_name = first_name;
		this.last_name = last_name;
		this.email = email;
	}

	public Trainer(int id, String first_name, String last_name, String email) {
		this.id = id;
		this.first_name = first_name;
		this.last_name = last_name;
		this.email = email;
	}

	public TrainerDetail getTrainerDetail() {
		return trainerDetail;
	}

	public void setTrainerDetail(TrainerDetail trainerDetail) {
		this.trainerDetail = trainerDetail;
	}

	@Override
	public String toString() {
		return "Trainer [id=" + id + ", first_name=" + first_name + ", last_name=" + last_name + ", email=" + email
				+ ", trainerDetail=" + trainerDetail + "]";
	}
}
</pre>
<p><b>TrainerDetail.java</b></p>
<pre class="MyCodeBlock">
package com.code4devops;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

<b class="MySpecialWord">@Entity</b>
<b class="MySpecialWord">@Table</b>
public class TrainerDetail {
	
	<b class="MySpecialWord">@Id</b>
	<b class="MySpecialWord">@GeneratedValue(strategy = GenerationType.IDENTITY)</b>
	<b class="MySpecialWord">@Column(name = "id",length = 10,nullable = false)</b>	
	private int id;
	
	<b class="MySpecialWord">@Column(name = "youtube_channel",length = 50,nullable = false)</b>	
	private String youtube_channel;
	
	<b class="MySpecialWord">@Column(name = "channel_topic",length = 50,nullable = false)</b>
	private String channel_topic;
	
	public TrainerDetail() {
		System.out.println("in case of View And Delete default constructor requried");
	}
	
	public TrainerDetail(String youtube_channel, String channel_topic) {
		this.youtube_channel = youtube_channel;
		this.channel_topic = channel_topic;
	}
	
	public TrainerDetail(int id, String youtube_channel, String channel_topic) {
		this.id = id;
		this.youtube_channel = youtube_channel;
		this.channel_topic = channel_topic;
	}
	
	@Override
	public String toString() {
		return "TrainerDetail [id=" + id + ", youtube_channel=" + youtube_channel + ", channel_topic=" + channel_topic
				+ "]";
	}
}
</pre>
<p><b>MySessionFactory.java</b></p>
<pre class="MyCodeBlock">
package com.code4devops;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
public class MySessionFactory{	
	public static  SessionFactory getMySessionFactory() {
		Configuration configuration=new Configuration();
		Configuration configuration2=configuration.configure("hibernate.cfg.xml");
		Configuration configuration3=configuration2.addAnnotatedClass(Trainer.class).addAnnotatedClass(TrainerDetail.class);
		SessionFactory factory=configuration3.buildSessionFactory();
		return factory;
	}
}
</pre>
<p><b>TrainerService.java</b></p>
<pre class="MyCodeBlock">
package com.code4devops;
public interface TrainerService {
	public abstract void mysave(Trainer trainer);
	public abstract void mydelete(int trainerId);
	public abstract void myView(int trainerId);
	public abstract void myUpdate(Trainer trainer);
}
</pre>
<p><b>TrainerServiceImpl.java</b></p>
<pre class="MyCodeBlock">
package com.code4devops;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
public class TrainerServiceImpl implements TrainerService{
	
	SessionFactory factory=MySessionFactory.getMySessionFactory();
	Session session=factory.getCurrentSession();
	
	@Override
	public void mysave(Trainer trainer) {
		try {
			session.beginTransaction();
			session.save(trainer);
			session.getTransaction().commit();
			}catch (Exception e) {
				System.out.println(e);
			}finally {
				session.close();
			}
	}
	
	@Override
	public void mydelete(int trainerId) {
		try {
			session.beginTransaction();
			Trainer trainer=session.get(Trainer.class, trainerId);
			if(trainer!=null) {
				System.out.println("Deleteing "+ trainer);
				session.delete(trainer);
			}else {
				System.out.println(trainerId +" This Trainer ID does not exist");
			}
			session.getTransaction().commit();
			System.out.println("DONE");	
		}catch (Exception e) {
			System.out.println(e);
		}finally {
			session.close();
		}
	}
	
	@Override
	public void myView(int trainerId) {
		try {
			session.beginTransaction();
			Trainer trainer=session.get(Trainer.class, trainerId);
			if(trainer!=null) {
				System.out.println(trainer);
			}else {
				System.out.println(trainerId +" This Trainer ID does not exist");
			}
			session.getTransaction().commit();
			System.out.println("DONE");	
		}catch (Exception e) {
			System.out.println(e);
		}finally {
			session.close();
		}
		
	}
	@Override
	public void myUpdate(Trainer trainer) {
		try {
			session.beginTransaction();
			session.saveOrUpdate(trainer);
			session.getTransaction().commit();
			System.out.println("DONE");	
		}catch (Exception e) {
			System.out.println(e);
		}finally {
			session.close();
		}
	}
}
</pre>
<p><b>App.java</b></p>
<pre class="MyCodeBlock">
package com.code4devops;
public class App {
public static void main(String[] args) {
	TrainerService trainerService=new TrainerServiceImpl();
	
	/***********(@onetone Uni-Directional Mapping) save****************/
	/**
	Trainer trainer=new Trainer("aman1","kumar1","aman1@gmail.com");
	TrainerDetail trainerDetail=new TrainerDetail("www.youtube.com/aman1","recurter1");
	trainer.setTrainerDetail(trainerDetail);
	trainerService.mysave(trainer);
	**/
	/***********(@onetone Uni-Directional) delete****************/
	/*
	trainerService.mydelete(1);
	*/
	/***********(@onetone Uni-Directional) view****************/
	
	trainerService.myView(1);
	
	/***********(@onetone Uni-Directional) update****************/
	/**
	Trainer trainer=new Trainer(2,"Anmol","Singh","anmol@gmail.com");
	TrainerDetail trainerDetail=new TrainerDetail(2,"www.youtube.com/anmol","tester");
	trainer.setTrainerDetail(trainerDetail);
	trainerService.myUpdate(trainer);
	**/
}
}
</pre>