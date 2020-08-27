<h1 class="blog-title"> &#9755; Python CRUD operations with mariaDB in Linux</h1>
<h2>Installation mariadb in linux server step by step </h2>
<p>[root@localhost ~]$ python --version</p>
<p>[root@localhost ~]$ pip --version</p>
<p>[root@localhost ~]$ python -m pip install --upgrade pip</p>
<p>[root@localhost ~]$ pip install mysql-connector-python==8.0.17</p>
<p>[root@localhost ~]$ yum -y install mariadb-devel.x86_64 </p>
<p>[root@localhost ~]$ systemctl start mariadb</p>
<p>[root@localhost ~]$ systemctl status mariadb</p>
<p>[root@localhost ~]$ systemctl enable mariadb</p>
<p>[root@localhost ~]$ mysql_secure_installation</p>
<p>[root@localhost ~]$ mysql -p</p>
<p><b>DBConnectionProvider.py</b></p>
<pre class="MyCodeBlock">
from mysql import connector
class ConnectionProvider:

	@staticmethod
	def myConnectionProvider():
		conn=connector.connect(user='root',password='root',host='localhost',port=3306,database='mypython')
		return conn
#print(ConnectionProvider.myConnectionProvider())
</pre>
<p><b>DBEmployee.py</b></p>
<pre class="MyCodeBlock">
class Employee:

	def __init__(self,id,name,email,mobile):
		self.id=id
		self.name=name
		self.email=email
		self.mobile=mobile

	
	def __str__(self):
		return "{0}  {1}  {2}  {3}".format(self.id,self.name,self.email,self.mobile)	

</pre>
<p><b>DBEmployeeService.py</b></p>
<pre class="MyCodeBlock">
from abc import ABC,abstractmethod
class EmployeeService(ABC):

	
	#create(save, insert query)
	@abstractmethod
	def save(self,employee):
		pass

	#read(view,select Query)
	@abstractmethod
	def view(self):
		pass

	#delete(delete,delete Query)	
	@abstractmethod
	def delete(self,employeeID):
		pass			

	#update(update, update query)
	@abstractmethod
	def update(self,employee):
		pass
</pre>
<p><b>DBEmployeeServiceImpl.py</b></p>
<pre class="MyCodeBlock">
from DBConnectionProvider import ConnectionProvider;
from DBEmployeeService import EmployeeService
class EmployeeServiceImpl(EmployeeService):

	def save(self,employeeObject):
		try:
			#print(employeeObject)
			conn=ConnectionProvider.myConnectionProvider();
			mycursor=conn.cursor(prepared=True)
			sql="insert into mypython.employee(id,name,email,mobile)values(%s,%s,%s,%s)"
			val=(employeeObject.id,employeeObject.name,employeeObject.email,employeeObject.mobile)
			mycursor.execute(sql,val)
		except Exception as e:
			print(e)
		else:
			conn.commit()
			print(mycursor.rowcount, "record inserted.")

	
	def view(self):
		try:
			conn=ConnectionProvider.myConnectionProvider();
			mycursor=conn.cursor(prepared=True)
			sql="select id,name,email,mobile from employee";
			mycursor.execute(sql)
			rs=mycursor.fetchall()
			for employee in rs:
				print(employee)
		except Exception as e:
			print(e)
		else:
			conn.commit()

	def delete(self,employeeID):
		try:
			conn=ConnectionProvider.myConnectionProvider();
			mycursor=conn.cursor(prepared=True)
			sql="delete from employee where id=%s";
			val=(employeeID,)
			mycursor.execute(sql,val)
		except Exception as e:
			print(e)
		else:
			conn.commit()
			print(mycursor.rowcount, "record deleted.")	

	def update(self,employeeObject):			
		try:
			conn=ConnectionProvider.myConnectionProvider();
			mycursor=conn.cursor(prepared=True)
			sql="update employee set name=%s,email=%s,mobile=%s where id=%s"
			val=(employeeObject.name,employeeObject.email,employeeObject.mobile,employeeObject.id)
			mycursor.execute(sql,val)
		except Exception as e:
			print(e)
		else:
			conn.commit()
			print(mycursor.rowcount, "record update.")			
</pre>
<p><b>DBApp.py</b></p>
<pre class="MyCodeBlock">
from DBEmployeeServiceImpl import EmployeeServiceImpl
from DBEmployee import Employee

obj1=EmployeeServiceImpl()	
employeeObject=Employee(1007,"hitesh","hitesh@gmail.com","7894567899")					
#obj1.save(employeeObject)
obj1.view()
#obj1.delete(1003)
obj1.update(employeeObject)
obj1.view()
</pre>