<h1>Super keyword in python</h1>
<ul>
  <li> super can invoke parent class method </li>
  <li> super can invoke parent class constructor </li>
  <li> super can invoke parent class variable </li>
</ul>
<h3>Super can invoke parent class method.calling Super class methods : by using super()</h3>
<pre id="codepre">
class A10:
	def displayInsatneMethod1(self):
		print("Instance Method A10")
class B10(A10):
	def displayInsatneMethod2(self):
		print("Instance Method B10")
		super().displayInsatneMethod1()	
b10=B10();#child class Object
b10.displayInsatneMethod2()
</pre>

<pre id="outputpre">
Instance Method B10
Instance Method A10
</pre>

<h3>Super can invoke parent class method with argument</h3>

<pre id="codepre">
class A10:
	def displayInsatneMethod1(self,fname,lname):
		print("Instance Method A10 :", fname ,lname )
class B10(A10):
	def displayInsatneMethod2(self):
		print("Instance Method B10")
		super().displayInsatneMethod1("ABC","XYZ")	
b10=B10();#child class Object
b10.displayInsatneMethod2()
</pre>

<pre id="outputpre">
Instance Method B10
Instance Method A10 : ABC XYZ
</pre>

<h3>Super invoke parent class Variable with different  name</h3>

<pre id="codepre">
comName="XYZ"
localtion="UP"
class A10:
	comName1="JBB"
	localtion1="US"
	
class B10(A10):

	comName2="APP"
	localtion2="California"

	def displayInsatneMethod2(self,comName3,localtion3):
		#as class variable
		print(self.comName1+" "+self.localtion1)
		#as class variable
		print(self.comName2+" "+self.localtion2)
		#as globals variable
		print(globals()['comName']+" "+globals()['localtion'])
		print(comName3+" "+localtion3)#as local variable
b10=B10();#child class Object
b10.displayInsatneMethod2("JBBAPP","Germany")		
</pre>

<pre id="outputpre">
JBB US
APP California
XYZ UP
JBBAPP Germany
</pre>

<h3>Super invoke parent class, class variable with same name</h3>

<pre id="codepre">
comName="XYZ"
localtion="UP"
class A10:
	comName="JBB"
	localtion="US"
	
class B10(A10):

	comName="APP"
	localtion="California"

	def displayInsatneMethod2(self,comName3,localtion3):
		#current class variable comName and localtion
		print(self.comName+" "+self.localtion)
		#parent class variable comName and localtion
		print(super().comName+" "+super().localtion)
		#as globals variable
		print(globals()['comName']+" "+globals()['localtion'])
		print(comName3+" "+localtion3)#as local variable
b10=B10();#child class Object
b10.displayInsatneMethod2("JBBAPP","Germany")	
</pre>

<pre id="outputpre">
APP California
JBB US
XYZ UP
JBBAPP Germany
</pre>
<h2>Super invoke parent class default constructor</h2>

<pre id="codepre">
class A10:

	def __init__(self):
		print("Default Constructor A10")

class B10(A10):

	def __init__(self):
		print("Default Constructor B10")
		super().__init__()	

b10=B10();#child class Object
</pre>
<pre id="outputpre">
Default Constructor B10
Default Constructor A10
</pre>
<h2>Super invoke parent class parameterized constructor</h2>
<pre id="codepre">
class A10:

	def __init__(self,fname,lname):
		print("Default Constructor A10 :", fname, lname)

class B10(A10):

	def __init__(self):
		print("Default Constructor B10")
		super().__init__("JBB","Pvt. Ltd.")	

b10=B10();#child class Object
</pre>
<pre id="outputpre">
Default Constructor B10
Default Constructor A10 : JBB Pvt. Ltd.
</pre>
<h2>Parent class Constructor call multiple  time form child class</h2>
<pre id="codepre">
class A10:
	
	def __init__(self):
		print("parent class Constructor")

class B10(A10):
	
	def __init__(self):
		super().__init__()
		print("child class Constructor")
		super().__init__()
		super().__init__()

b10=B10();#child class Object
</pre>
<pre id="outputpre">
parent class Constructor
child class Constructor
parent class Constructor
parent class Constructor
</pre>
<h2>Two way to call parent class constructor</h2>
<ul>
	<li>by super keyword</li>
	<li>by parent class Name : </li>
</ul>
<pre id="codepre">
class A10:
	
	def __init__(self):
		print("parent class Constructor")

class B10(A10):
	
	def __init__(self):
		super().__init__()
		print("child class Constructor")
b10=B10();#child class Object
</pre>
<pre id="outputpre">
parent class Constructor
child class Constructor
</pre>
<h3>
Here if you are calling the parent class constructor by using 
class Name in this case frist args must be self args
</h3>
<pre id="codepre">
class A10:
	
	def __init__(self,email):
		print("parent class Constructor",email)

class B10(A10):
	
	def __init__(self):
		super().__init__("ashu@gmail.com")
		print("1 child class Constructor")
		A10.__init__(self,"arun@gmail.com")
		print("2 child class Constructor")

b10=B10();#child class Object
</pre>
<pre id="outputpre">
parent class Constructor ashu@gmail.com
1 child class Constructor
parent class Constructor arun@gmail.com
2 child class Constructor
</pre>
<h1>copy constructor</h1>
<pre id="codepre">
class HrEmploye:
	
	def __init__(self,fn,ln):
		self.fn=fn
		self.ln=ln
class Employee(HrEmploye):

	def __init__(self,fn,ln,em):
		#super().__init__(fn,ln)
		#OR
		HrEmploye.__init__(self,fn,ln)
		self.em=em

	def display(self):
		print("Fn:",self.fn," Ln:",self.ln," Em:",self.em)
		print("Fn:{} Ln:{} Em:{}".format(self.fn,self.ln,self.em))

e1=Employee("Ashutosh","Mishra","ashumishra9015@gmail.com")
e1.display()
</pre>
<pre id="outputpre">
Fn: Ashutosh  Ln: Mishra  Em: ashumishra9015@gmail.com
Fn:Ashutosh Ln:Mishra Em:ashumishra9015@gmail.com
</pre>
