<p>python --version</p>
<p>python -m pip install --upgrade pip</p>
<p>pip install mysql-connector-python</p>
<strong>or</strong>
<p>pip install mysql-connector-python==8.0.17</p>
<p>pip uninstall mysql-connector-python</p>
<h3>Here Create Table syntax(Workbench mysql)</h3>
<p>According your mysql editor change the syntax</p>
<pre>
CREATE TABLE `employee` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `fname` varchar(100) DEFAULT NULL,
  `lname` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `comName` varchar(100) DEFAULT NULL,
  `comLocaltion` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
</pre>

<p>this source file save as <strong>company.py</strong> that is call modules name</p>
<pre>
class Companydb:
	def __init__(self,comName,comLocaltion):
		self.comName=comName
		self.comLocaltion=comLocaltion
</pre>
<p>this source file save as <strong>employeedb.py</strong> that is call modules name</p>
<h1>Python CRUD opreation</h1>
<h3>mysql connect with python.And this example show the save opreation</h3>
<pre>
import company
import mysql.connector
class Employee:
	def __init__(self,fname,lname,email,mobile,companyObject):
		self.fname=fname
		self.lname=lname
		self.email=email
		self.mobile=mobile
		self.companyObject=companyObject
	def employeeSave(self):
		con = mysql.connector.connect(
				user='root',
				password='root',
				host='127.0.0.1',
				database='core_java')
		empcursor=con.cursor()
		sql="insert into employee(fname,lname,email,mobile,comName,comLocaltion) values(%s,%s,%s,%s,%s,%s)"
		val=(self.fname,self.lname,self.email,self.mobile,
		self.companyObject.comName,self.companyObject.comLocaltion)
		empcursor.execute(sql,val)
		con.commit()
		print(empcursor.rowcount, "record inserted.")
c1=company.Companydb("JBB","Nodia")
e1=Employee("ashu","mishra","ashu@gmail.com","95608282035",c1)
e1.employeeSave()
</pre>

<pre>
1 record inserted.
</pre>

<h3>mysql connect with python.And this example show the delete opreation</h3>
<pre>
import company
import mysql.connector
class Employee:
	
	def employeeDelete(self,empId):
		con = mysql.connector.connect(
				user='root',
				password='root',
				host='127.0.0.1',
				database='core_java')
		empcursor=con.cursor()
		sql="DELETE FROM employee WHERE id = %s"
		val=(empId,)
		empcursor.execute(sql,val)
		con.commit()
		print(empcursor.rowcount, empId," record delete.")
e1=Employee()
e1.employeeDelete(6)
</pre>

<pre>
1 3  record delete.
</pre>

<h3>mysql connect with python.And this example show the Update opreation</h3>
<pre>
import company
import mysql.connector
class Employee:
	def __init__(self,fname,lname,email,mobile,companyObject):
		self.fname=fname
		self.lname=lname
		self.email=email
		self.mobile=mobile
		self.companyObject=companyObject
	def employeeUpdate(self,empId):
		con = mysql.connector.connect(
				user='root',
				password='root',
				host='localhost',
				database='core_java')
		empcursor=con.cursor()
		sql="update employee set fname=%s,lname=%s,email=%s,mobile=%s,comName=%s,comLocaltion=%s where id=%s"
		val=(self.fname,self.lname,self.email,self.mobile,self.companyObject.comName,self.companyObject.comLocaltion,empId)
		empcursor.execute(sql,val)
		print("DONE")
		con.commit()
		print(empcursor.rowcount, empId ," employee information update.")
c1=company.Companydb("JBB","Pvt. Ltd.")
e1=Employee("Ashuhtosh","Mishra","ashumishra9718@gmail.com","95608282035",c1)
e1.employeeUpdate(1)
</pre>

<pre>
DONE
1 1  employee information update.
</pre>

<h3>mysql connect with python.And this example show the View opreation</h3>
<pre>
import company
import mysql.connector
class Employee:
	def employeeView(self):
		con = mysql.connector.connect(
				user='root',
				password='root',
				host='127.0.0.1',
				database='core_java')
		empcursor=con.cursor()
		sql="select * from employee"
		empcursor.execute(sql)
		rs=empcursor.fetchall()
		for value in rs:
			print(value)
e1=Employee()
e1.employeeView()
</pre>

<pre>
(1, 'Ashuhtosh', 'Mishra', 'ashumishra9718@gmail.com', '95608282035', 'JBB', 'Pvt. Ltd.')
(2, 'Goli', 'mishra', 'Goli@gmail.com', '95608282031', 'JBB', 'Pvt. Ltd.')
(5, 'ashu', 'mishra', 'ashu@gmail.com', '95608282035', 'JBB', 'Nodia')
(7, 'ashu', 'mishra', 'ashu@gmail.com', '95608282035', 'JBB', 'Nodia')
</pre>
