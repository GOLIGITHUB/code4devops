<ul>
	<li>Thread a light task or small task of the application</li>
	<li>Every thread is separate independent part of the same application</li>
	<li>Threads exist inside a process.Multiple threads can exist in a single process</li>
	<li>Executing more than one thread simultaneously is called multithreading</li>
	<li>Threads allow a program to run multiple operations concurrently in the same process space.</li>
</ul>
<ul>
	<li>one process one thread</li>
	<li>one process multiple threads</li>
	<li>multiple processes one thread per process</li>
	<li>multiple processes multiple threads per process</li>
</ul>
<p><strong>process</strong>:</p>
<p><strong>thread</strong>:</p>
<h3>in python two way to create thread</h3>
<ul>
	<li>threading module</li>
	<li>thread module(Deprecated)</li>
</ul>
<p>in pyhton if you class extends Thread class now your class became thread class</p>
<pre>
import threading
class MyThreadClass(threading.Thread):
    def run(self):
        for i in range(1,3):
            print(i)
t1 = MyThreadClass()
t1.start()
t2 = MyThreadClass()
t2.start()
t3 = MyThreadClass()
t3.start()
</pre>
<pre>
1
2
1
1
2
2
</pre>
<pre>
import threading
class MyThreadClass:
    def display(self):
        for i in range(3):
            print(i)
    
t1=threading.Thread(target=MyThreadClass().display)
t1.start()
t2=threading.Thread(target=MyThreadClass().display)
t2.start()
t3=threading.Thread(target=MyThreadClass().display)
t3.start()
t4=threading.Thread(target=MyThreadClass().display)
t4.start()
</pre>
<pre>
import threading
class MyThreadClass:
    def display(self,num):
        for i in range(num):
            print(i)
t1=threading.Thread(target=MyThreadClass().display,args=(3,))
t1.start()
t2=threading.Thread(target=MyThreadClass().display,args=(3,))
t2.start()
t3=threading.Thread(target=MyThreadClass().display,args=(3,))
t3.start()
t4=threading.Thread(target=MyThreadClass().display,args=(3,))
t4.start()
</pre>
<pre>
import threading
def print_square(num):
	print(num*num)
def print_cube(num):
	print(num*num*num)
#create thread	
t1=threading.Thread(target=print_square,args=(2,))
#starts the thread
t1.start()

#create thread
t2=threading.Thread(target=print_square,args=(3,))
#starts the thread
t2.start()		
</pre>
<pre>
4
9
</pre>
<h3>without using module name in</h3>
<pre>
from threading import Thread
def print_square(num):
	print(num*num)
def print_cube(num):
	print(num*num*num)
#create thread	
t1=Thread(target=print_square,args=(2,))
#starts the thread
t1.start()

#create thread
t2=Thread(target=print_square,args=(3,))
#starts the thread
t2.start()		
</pre>
<pre>
4
9
</pre>
<pre>
from threading import Thread
def print_square(num):
	for i in range(num):
	    print(i)
def print_cube(num):
	for j in range(num):
	    print(j)
#create thread	
t1=Thread(target=print_square,args=(3,))
#starts the thread
t1.start()

#create thread
t2=Thread(target=print_square,args=(3,))
#starts the thread
t2.start()		
</pre>
<pre>
0
1
0
2
1
2
</pre>