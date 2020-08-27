<p><strong>Exception</strong>: Exception that means abnormal behaviour</p>
<p><strong>Exception</strong>: When in program exception raised program terminated abnormal 
							   and rest of code not executed</p>
<p><strong>Exception</strong>: In python exception that means error</p>
<h3>In python two type of error</h3>
<ul>
	<li>syntax error</li>
	<li>runtime error is call exception</li>
</ul>
<h3>In python error handing useing 5 keyword</h3>
<ul>
	<li>try</li>
	<li>except</li>
	<li>else,default except</li>
	<li>finally</li>
	<li>raise</li>
</ul>
<h3>Python Exception Handing</h3>
<p>if we use Exception handing mechanism.Then in program exception raised, program terminated normally 
and rest of code executed</p>
<p><strong>Without Exception Handing :</strong>Program terminated abnormal and rest of code not executed</h3>
<pre>
print("hello 1")
print("hello 2")
print("hello 3")
print("hello 4")
print(10/0)
print("hello 5")
print("hello 6")
print("hello 7")
</pre>
<pre>
hello 1
hello 2
hello 3
hello 4
Traceback (most recent call last):
  File "b10.py", line 5, in <module>
    print(10/0)
ZeroDivisionError: division by zero
</pre>
<p><strong>With Exception Handing :</strong>Program terminated normally and rest of code executed</h3>
<h3>try except block syntax in python</h3>
<pre>
try:
	exceptional code, may be may not be
except <strong>exception_class_name</strong> as <strong>variable_name</strong>:
	this code executed when exception raised in try block
</pre>
<pre>
print("hello 1")
print("hello 2")
print("hello 3")
print("hello 4")
try:
	print(10/0)
except ZeroDivisionError as e:
	print(e)	
print("hello 5")
print("hello 6")
</pre>
<pre>
hello 1
hello 2
hello 3
hello 4
division by zero
hello 5
hello 6
</pre>
<h3>if except block doesn't match, program terminated abnormal</h3>
<pre>
print("hello 1")
print("hello 2")
print("hello 3")
print("hello 4")
try:
	print(10/0)
except TypeError as e:
	print(e)	
print("hello 5")
print("hello 6")
</pre>
<pre>
hello 1
hello 2
hello 3
hello 4
Traceback (most recent call last):
  File "b10.py", line 6, in <module>
    print(10/0)
ZeroDivisionError: division by zero
</pre>
<h3>try,except and else block syntax in python </h3>
<pre>
try:
	exceptional code, may be may not be
except <strong>exception_class_name</strong> as <strong>variable_name</strong>
	this code executed when exception raised in try block
else:
	this code executed when no exception raised in try block	
</pre>
<h3>Exception handly by try,except and else block python</h3>
<p>else block execute when no exception raised in python<p> 
<pre>
print("Hello1")
try:
    print(10/0)
except ArithmeticError as e:
#ArithmeticError is parent class
# and ZeroDivisionError is child class
    print("Exception :",e)
else:
	print("if try block no exception")    
print("Rest of code")    
</pre>
<pre>
Hello1
Exception : division by zero
Rest of code
</pre>
<p><strong>else block execute when no exception raised</strong><p> 
<pre>
print("Hello1")
try:
    print(10/5)
except ArithmeticError as e:
#ArithmeticError is parent class
# and ZeroDivisionError is child class
    print("Exception :",e)
else:
	print("if try block no exception")    
print("Rest of code")    
</pre>
<pre>
Hello1
2.0
if try block no exception
Rest of code
</pre>
<h3>default block except we enter string</h3>
<pre>
print("Hello1")
try:
	a=int(input("enter a number : "))
	print(10/a)
except ArithmeticError as e:
    print("Exception :",e)
except : 
	print("default exception")   
else:
	print("if try block no exception")    

print("Rest of code")
</pre>
<pre>
Hello1
enter a number : STRING
default exception
Rest of code
</pre>
<h3>CASE 1 : Single try block and multiple except block with else</h3>
<pre>
try:
	#print(10/0)
	#ZeroDivisionError : division by zero
	print(10/2)
	name="ASHU"
	print(name.len())
	#AttributeError: 'str' object has no attribute 'len' 
	print(len(name))
	#add="abc"+100
	#TypeError: can only concatenate str (not "int") to str
	add=200+100
	print(add) 
	message="keep moving"
	#print(message[15])
	#IndexError: string index out of range
	print(message[2])
	#print(message.index("ashu"))
	#ValueError: substring not found
	print(message.index("keep"))
except ZeroDivisionError as e:
    print("ZeroDivisionError :",e)
except AttributeError as e:
    print("AttributeError :",e)
except TypeError as e:
    print("TypeError :",e)
except IndexError as e:
    print("IndexError :",e)
except ValueError as e:
    print("ValueError :",e)    
else:
    print("no exception raised")        
</pre>
<pre>
5.0
AttributeError : 'str' object has no attribute 'len'
</pre>
<h3>CASE 2 : Single try block and except block with else</h3>
<pre>
try:
	#print(10/0)
	#ZeroDivisionError : division by zero
	print(10/2)
	name="ASHU"
	#print(name.len())
	#AttributeError: 'str' object has no attribute 'len' 
	print(len(name))
	#add="abc"+100
	#TypeError: can only concatenate str (not "int") to str
	add=200+100
	print(add) 
	message="keep moving"
	print(message[15])
	#IndexError: string index out of range
	#print(message[2])
	#print(message.index("ashu"))
	#ValueError: substring not found
	print(message.index("keep"))
except (ZeroDivisionError,AttributeError,TypeError,IndexError,ValueError) as e:
   print("exception :",e)   
else:
	print("no exception raised")            
</pre>
<pre>
5.0
4
300
exception : string index out of range
</pre>
<h3>Exception with BaseException class</h3>
<pre>
try:
	#print(10/0)
	#ZeroDivisionError : division by zero
	print(10/2)
	name="ASHU"
	#print(name.len())
	#AttributeError: 'str' object has no attribute 'len' 
	print(len(name))
	#add="abc"+100
	#TypeError: can only concatenate str (not "int") to str
	add=200+100
	print(add) 
	message="keep moving"
	#print(message[15])
	#IndexError: string index out of range
	print(message[2])
	print(message.index("ashu"))
	#ValueError: substring not found
	print(message.index("keep"))
except BaseException as e:
   print("exception :",e)   
else:
	print("no exception raised")    
</pre>
<pre>
5.0
4
300
e
exception : substring not found
</pre>
<h3>Exception with Exception class</h3>
<pre>
try:
	#print(10/0)
	#ZeroDivisionError : division by zero
	print(10/2)
	name="ASHU"
	#print(name.len())
	#AttributeError: 'str' object has no attribute 'len' 
	print(len(name))
	#add="abc"+100
	#TypeError: can only concatenate str (not "int") to str
	add=200+100
	print(add) 
	message="keep moving"
	#print(message[15])
	#IndexError: string index out of range
	print(message[2])
	print(message.index("ashu"))
	#ValueError: substring not found
	print(message.index("keep"))
except Exception as e:
   print("exception :",e)   
else:
	print("There is no exception raised")    
</pre>
<pre>
5.0
4
300
e
exception : substring not found
</pre>
<h3>yes, you can change except block parent to child  or child to parent exception order in python
but except block order must be child to parent</h3>
<strong>NOTE:</strong> <p>In this example if you enter number 0 then ZeroDivisionError exception raise or
if you enter string then ValueError exception</p>
<p>
</p>
<pre>
def getException():
	try:
		num=int(input("Please Enter a number :"))
		print(100/num)
	except ZeroDivisionError as e:
		print("Child Exception :",e)
	except BaseException as e:
		print("Parent Exception :",e)	
	else:
		print("There is no exceptio")
getException()				
</pre>
<pre>
Please Enter a number :0
Child Exception : division by zero
</pre>
<pre>
Please Enter a number :ashu
Parent Exception : invalid literal for int() with base 10: 'ashu'
</pre>
<p><strong>Here change the exception order parent to child exception in python</strong></p>
<pre>
def getException():
	try:
		num=int(input("Please Enter a number :"))
		print(100/num)
	except BaseException as e:
		print("Parent Exception :",e)
	except ZeroDivisionError as e:
		print("Child Exception :",e)
	else:
		print("There is no exceptio")
getException()
</pre>
<pre>
Please Enter a number :0
Parent Exception : division by zero
</pre>
<pre>
Please Enter a number :ashu
Parent Exception : invalid literal for int() with base 10: 'ashu'
</pre>
<h1> nested try except block in pyhton</h1>
<pre>
def getException():
	try:
		num=int(input("Please Enter a number :"))
		print(100/num)
		try:
			print("ashu"+9015)
		except TypeError as e:
			print("Inner try block exception:",e)
		else:
			print("There is no exceptio in inner try block")
		print("inner try block rest of code")	
	except (ZeroDivisionError,ValueError) as e:
		print("Outer try block exception:",e)
	else:
		print("There is no exceptio in Outer try block")
	print("Outer try block rest of code")	
getException()
</pre>
<pre>
Please Enter a number :0
Outer try block exception: division by zero
Outer try block rest of code
</pre>
<pre>
Please Enter a number :10
10.0
Inner try block exception: can only concatenate str (not "int") to str
inner try block rest of code
There is no exceptio in Outer try block
Outer try block rest of code
</pre>
<h2>CASE 1</h2>
<h3>Exception with module in python</h3>
<p>this source file save as <strong>module1.py</strong> that is call modules name</p>
<pre>
def getExcetionFuntion():
	print("ABC"+100)
</pre>
<p>this source file save as <strong>module2.py</strong> that is call modules name</p>
<pre>
from module1 import getExcetionFuntion
try:
	getExcetionFuntion()
except Exception as e:
	print(e)
else:
	print("There is no error in module1 function")
</pre>
<pre>
can only concatenate str (not "int") to str
</pre>
<h2>CASE 2</h2>
<p>this source file save as <strong>module1.py</strong> that is call modules name</p>
<pre>
def getExcetionFuntion():
	try:
		print("ABC"+"XYZ")
	except Exception as e:
		print(e)
	else:
		print("There is no error in module1 function")
</pre>
<p>this source file save as <strong>module2.py</strong> that is call modules name</p>
<pre>
from module1 import getExcetionFuntion
getExcetionFuntion()
</pre>
<pre>
ABCXYZ
There is no error in module1 function
</pre>
<h1> finally with try except block in pyhton</h1>
<h3>try except and finally block syntax</h3>
<pre>
try:
	exceptional code, may be may not be
except:
	this code executed when exception raised in try block
finally:
    always executed
</pre>
<p><strong>CASE 1:</strong> valid</p>
<pre>
def getException():
	try:
		print("try block")
	except:
		print("except block")
	finally:
		print("finally block")			
getException()
</pre>
<pre>
try block
finally block
</pre>
<p><strong>CASE 2:</strong> normal termination</p>
<pre>
def getException():
	try:
		print(10+"ashu")
	except:
		print("except block")
	finally:
		print("finally block")			
getException()
</pre>
<pre>
except block
finally block
</pre>
<p><strong>CASE 3:</strong> abnormal termination</p>
<pre>
def getException():
	try:
		print(10+"ashu")
	except ZeroDivisionError as e:
		print("except block :",e)
	finally:
		print("finally block")			
getException()
</pre>
<pre>
finally block
Traceback (most recent call last):
  File "jbbexception7.py", line 8, in <module>
    getException()
  File "jbbexception7.py", line 3, in getException
    print(10+"ashu")
TypeError: unsupported operand type(s) for +: 'int' and 'str'
</pre>
<p><strong>CASE 4:</strong> Invalid and abnormal termination</p>
<pre>
def getException():
	try:
		print(10+"ashu")
	except TypeError as e:
		print(name[2])
		print("except block:",e)
	finally:
		print("finally block")			
getException()
</pre>
<pre>
finally block
Traceback (most recent call last):
  File "jbbexception7.py", line 3, in getException
    print(10+"ashu")
TypeError: unsupported operand type(s) for +: 'int' and 'str'

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "jbbexception7.py", line 9, in <module>
    getException()
  File "jbbexception7.py", line 5, in getException
    print(name[2])
NameError: name 'name' is not defined
</pre>
<h3>only try with finally in pyhton </h3>
<pre>
def getException():
	try:
		print("try block")
	finally:
		print("finally block")			
getException()
</pre>
<pre>
try block
finally block
</pre>
<h3>In python finally block not executed in two case</h3>
<p><strong>CASE 1:</strong> if exception raised outside try block</p>
<pre>
print("ABC"+100)
def getException():
	try:
		print("try block")
	finally:
		print("finally block")			
getException()
</pre>
<p><strong>CASE 1:</strong> if use os module</p>
<pre>
import os
def getException():
	try:
		print("try block")
		os._exit(0)
	finally:
		print("finally block")			
getException()
</pre>
<pre>
try block
</pre>
<h3>python interview question</h3>
<p><strong>CASE 1:</strong></p>
<pre>
def getException():
	try:
		print("XYZ"+1000)
		print("try Block")
	except:
		print(name)
		print("except Block")	
	finally:
		print(ar[0])
		print("finally block")
getException()
</pre>
<p><strong>CASE 2:</strong></p>
<pre>
def getException():
	try:
		return 1000
	except:
		return 2000
	finally:
		return 3000
print(getException())
</pre>
<p><strong>CASE 3:</strong></p>
<pre>
def getException():
	try:
		return 1000
	finally:
		return 3000
print(getException())
</pre>
<p><strong>CASE 4:</strong></p>
<pre>
def getException():
	try:
		return 1000
	except:
		return 2000
print(getException())
</pre>
<p><strong>CASE 5:</strong></p>
<pre>
def getException():
	try:
		print(10+"AS")
		return 1000
	except:
		return 2000
print(getException())
</pre>
<p><strong>CASE 6:</strong></p>
<pre>
def getException():
	try:
		return 1000
	except:
		return 2000
	else:
		return 4000	
	finally:
		return 3000
		
print(getException()
</pre>
<h2>custome exception with raise keyword in python</h2>
<pre>
def getException():
	try:
		#print("ASHU"+10)
		raise TypeError("my type error")
	except TypeError as e:
		print(e)
	else:
		print("There is no exception")
getException()
</pre>
<p><strong><strong>custome exception using parent class constrouctor</strong></strong></p>
<p>this source file save as <strong>module1.py</strong> that is call modules name</p>
<pre>
class ageForVoteException(Exception):
	def __init__(self,message):
		super().__init__(message)
</pre>
<p>this source file save as <strong>module2.py</strong> that is call modules name</p>
<pre>
from module1 import ageForVoteException
class ForVote:
	def __init__(self,age):
		try:
			if(age>=18):
				print("valid for vote")
			else:
				raise ageForVoteException("Invalid age for vote")
		except ageForVoteException as e:
			print("ageForVoteException :",e)
		else:
			print("There is no error")
age=int(input("Please Enter Your Age :"))
fv=ForVote(age)	
</pre>
<pre>
Please Enter Your Age :2
ageForVoteException : Invalid age for vote
</pre>
<p><strong><strong>custome exception using instance variable</strong></strong></p>
<pre>
class ageForVoteError(Exception):
	def __init__(self,message):
		self.message=message
</pre>
<pre>
from module1 import ageForVoteError
class ForVote:

	@staticmethod
	def getMyMethod(age):
		print("code start......")
		try:
			if(age>=18):
				print("valid for vote")
			else:
				raise ageForVoteError("Invalid age for vote")
		except ageForVoteError as e:
			print("ageForVoteError :",e)
		else:
			print("There is no error")
		print("Rest of code......")	
age=int(input("Please Enter Your Age :"))
ForVote.getMyMethod(age)			
</pre>
<pre>
Please Enter Your Age :1
code start......
ageForVoteError : Invalid age for vote
Rest of code......
</pre>
<pre>
TypeError : concat not possible
ValueError : conversion
NameError : name is not defined
unboundLocalError 
</pre>