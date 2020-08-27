 <h1>Inheritance</h1>
<p>In Python object class is super class all python classs</p>
<p>In python our class is child class by default</p>
<p>if method or constructor or variable is not available in child class.
	then implicitly execute parent class method or constructor or variable
</p>
<p> always creative child class object it is recommended</p>
<pre id="codepre">
class A10:
	pass
class B10:
	pass
class C10:
	pass
class D10(object):
	pass
print(issubclass(A10,object))
print(issubclass(B10,object))
print(issubclass(C10,object))				
print(issubclass(D10,object))
</pre>

<pre id="outputpre">
True
True
True
True
</pre>

<pre id="codepre">
class A10:
	pass
class B10(A10):
	pass
class C10(B10):
	pass
class D10(object):
	pass
print(issubclass(A10,object))
print(issubclass(B10,object))
print(issubclass(C10,object))				
print(issubclass(D10,object))
</pre>
<pre id="outputpre">
True
True
True
True
</pre>
<pre id="codepre">
class A10:
	pass
class B10(A10,object):
	pass
class C10(B10,object):
	pass
class D10(C10,object):
	pass
print(issubclass(A10,object))
print(issubclass(B10,object))
print(issubclass(C10,object))				
print(issubclass(D10,object))
</pre>

<pre id="outputpre">
True
True
True
True
</pre>
<pre id="codepre">
class A10:
	def displayInsatneMethod1(self):#instance method
		print("Instance Method A10")
class B10(A10):
	def displayInsatneMethod2(self):#instance method
		print("Instance Method B10")
b10=B10();#child class Object
b10.displayInsatneMethod1()
b10.displayInsatneMethod2()	
</pre>
<pre id="outputpre">
Instance Method A10
Instance Method B10
</pre>
<h2>if child have no constructor implicitly execute parent class constructor </h2>
<pre id="codepre">
class A10:
	
	def __init__(self):
		print("parent class Constructor")

class B10(A10):
	
	pass

b10=B10();#child class Object

</pre>
<pre id="outputpre">
parent class Constructor
</pre>
<h2>if child have constructor then it not go to the parent class</h2>
<pre id="codepre">
class A10:
	
	def __init__(self):
		print("parent class Constructor")

class B10(A10):
	
	def __init__(self):
		print("child class Constructor")

b10=B10();#child class Object
</pre>
<pre id="outputpre">
child class Constructor
</pre>
<h1>Type of inheritance in python</h1>
<ul>
	<li>Single Inheritance</li>
	<li>Multilevel Inheritance</li>
	<li>Multiple Inheritance</li>
	<li>Hierarchical Inheritance</li>
	<li>Hybrid Inheritance</li>
</ul>
<h2>Single Inheritance</h2>
<p>One parent class One child class</p>
<pre id="codepre">
class A10:
	pass
class B10(A10):
	pass
</pre>
<h2>Multilevel Inheritance</h2>
<p>One Grand Father One parent class One child class</p>
<pre id="codepre">
class A10:
	pass
class B10(A10):
	pass
class C10(B10):
	pass
</pre>

<pre id="codepre">
class A10:
	def getName1(self):
		print("getName1")
class B10(A10):
	def getName2(self):
		print("getName2")
class C10(B10):
	def getName3(self):
		print("getName3")

c10=C10()
c10.getName3()
c10.getName2()
c10.getName1()	
</pre>	

<pre id="outputpre">
getName3
getName2
getName1
</pre>

<h2>Multiple Inheritance</h2>	
<p>one child class with multiple parent class </p>
<pre id="codepre">
class A10:
	pass
class B10:
	pass
class C10(A10,B10):
	pass
</pre>
<pre id="codepre">
class A10:
	def getName1(self):
		print("getName1")
class B10:
	def getName2(self):
		print("getName2")
class C10(A10,B10):
	def getName3(self):
		print("getName3")

c10=C10()
c10.getName1()
c10.getName2()
c10.getName3()
</pre>
<pre id="outputpre">
getName1
getName2
getName3
</pre>
<h2>Hierarchical Inheritance</h2>
<p>One parent class with multiple child class</p>
<pre id="codepre">
class A10:
	pass
class B10(A10):
	pass
class C10(A10):
	pass
</pre>
<pre id="codepre">
class A10:
	def getName1(self):
		print("getName1")
class B10(A10):
	def getName2(self):
		print("getName2")
class C10(A10):
	def getName3(self):
		print("getName3")

c10=C10()
c10.getName1()
c10.getName3()


b10=B10()
b10.getName1()
b10.getName2()
</pre>
<pre id="outputpre">
getName1
getName3
getName1
getName2
</pre>
<h2>Hybrid Inheritance</h2>
<p>Hybrid inheritance is combination of Multiple and Hierarchical Inheritance</p>
<h1>def __str__(self) function python</h1>
<pre id="codepre">
class HrEmploye:
	
	def __init__(self,fname,lname):
		self.fname=fname
		self.lname=lname
class Employee(HrEmploye):

	def __init__(self,fname,lname,email):
		#super().__init__(fname,lname)
					# OR
		HrEmploye.__init__(self,fname,lname)
		self.email=email


	def __str__(self):
		return "Fname:{} Lname:{} Email:{}".format(self.fname,self.lname,self.email)

emp= Employee("Ashutosh","Mishra","ashumishra9015@gmail.com")
print(emp)
emp= Employee("Arun","Singh","arunsingh9015@gmail.com")
print(emp)
</pre>

<pre id="outputpre">
Fname:Ashutosh Lname:Mishra Email:ashumishra9015@gmail.com
Fname:Arun Lname:Singh Email:arunsingh9015@gmail.com
</pre>
<h2>isinstance function python</h2>
<pre id="codepre">
class A11:
	pass
class B11(A11):
	pass
a1=A11()
a2=B11()	
print(isinstance(a1,A11))
print(isinstance(a2,B11))	
print(isinstance(a2,A11))
print(isinstance(a1,B11))
</pre>

<pre id="outputpre">
True
True
True
False
</pre>