<h3>What is encapsulation in python?</h3>
<h4>Binding the data and data member in single unit is call encapsulation</h4>
<p><strong>if we define the data and data member private.you can't access outside class</strong></p>
<h3>Private Variables : we can access only with in the class</h3>
<pre id="codepre">
class A10:
	__fname="Ashu"
	def display(self):
		return self.__fname
a1=A10()
print(a1.display())	
#private variable can't 
#access outside class
print(A10.__fname)
</pre>
<pre id="outputpre">
    print(A10.__fname)
AttributeError: type object 'A10' has no attribute '__fname'
</pre>
<pre id="codepre">
class A10:
	__fname="Ashu"
	def display(self):
		return self.__fname
a1=A10()
print(a1.display())
</pre>
<pre id="outputpre">
Ashu
</pre>
<h3>Private Method : we can access only with in the class</h3>
<pre id="codepre">
class A10:
	
	def __display(self):
		return "private method"
	def call(self):
		print(self.__display(),"call by other method inside class")	
a1=A10()
a1.call()
#private method can't 
#access outside class
print(A10.__display())
</pre>
<pre id="outputpre">
    print(A10.__display())
AttributeError: type object 'A10' has no attribute '__display'
</pre>

<pre id="codepre">
class A10:
	def __display(self):
		return "private method"
	def call(self):
		print(self.__display(),"call by other method inside class")	
a1=A10()
a1.call()
</pre>
<pre id="outputpre">
private method call by other method inside class
</pre>
<h3>Getter and Setter in python</h3>
<pre id="codepre">
class Employee:
	def setFName(self,fname):
		self.__fname=fname
	def getFName(self):
		return self.__fname
	def setLName(self,lname):
		self.__lname=lname
	def getLName(self):
		return self.__lname
	def setEmail(self,email):
		self.__email=email
	def getEmail(self):
		return self.__email

e1=Employee()
e1.setFName("ashu")
e1.setLName("mishra")
e1.setEmail("ashu@gmail.com")
print(e1.getFName()," ",e1.getLName()," ",e1.getEmail())			
</pre>
<pre id="outputpre">
ashu   mishra   ashu@gmail.com
</pre>
<h3>Setter and Getter with using __str__() method</h3>
<pre id="codepre">
class Employee:
	def setFName(self,fname):
		self.__fname=fname
	def getFName(self):
		return self.__fname
	def setLName(self,lname):
		self.__lname=lname
	def getLName(self):
		return self.__lname
	def setEmail(self,email):
		self.__email=email
	def getEmail(self):
		return self.__email
	def __str__(self):
		return self.__fname+" "+self.__lname+" "+self.__email
e1=Employee()
e1.setFName("ashu")
e1.setLName("mishra")
e1.setEmail("ashu@gmail.com")
print(e1)
e2=Employee()
e2.setFName("arun")
e2.setLName("singh")
e2.setEmail("arun@gmail.com")
print(e2)			
</pre>
<pre id="outputpre">
ashu mishra ashu@gmail.com
arun singh arun@gmail.com
</pre>