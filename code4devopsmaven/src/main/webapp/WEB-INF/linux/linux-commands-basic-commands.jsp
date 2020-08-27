<pre>
bin is binaries file. basic commands store inside bin
boot dir store static file which need to start boot loader
etc(ats) dir store config file like web,DNS,email,server
usr dir store shareable data and it is read only
var dir store variable data files or changeable file ex-log
sbin(System Binaries) dir store executable file booting,restoring,recovery, or repairning
</pre>

<pre>
su(by default admin switch)
su - user_name
passwd 
pwd		
whoami 

cd /
mkdir folder_Name
rmdir folder_Name
rm file_name
cp file_Name folder_Name/
rm -rf folder
mkdir -p ashu/aman/arun/triloki
alias 
clear 
</pre>

<pre>
cat > demo3.txt 
Avoid running complex programs while logged in as root. 
cat demo3.txt                                        
Avoid running complex programs while logged in as root.
(user)rm demo1.txt
(admin)rm demo1.txt
</pre>
<h1>Mode : Owner : Group : File_Size : Last_Modified : File_Name</h1>

<pre>
cat file_Name (contant view command)
cat file_Name | more ( enter >>)
cat file_Name | less(<< up and down >>)
cat > file_name.txt(write something then save ctrl+d)
cat > file_name.txt(overwrite but not editable)
cat >> file_name.txt(append)
cp old_file_name new_file_name(copy)
mv old_file_name new_file_name(rename)
</pre>

<pre>
Absolute and Relative Paths 
Absolute Path : Path from the root directory to the desired directory file 
/home/amishra/Desktop/ashu/demo/subdemo
Relative path : Path from ("relative to") a given directory (usually current)
ashu/demo/subdemo
</pre>

<pre>
	SIO(Standard Input output Redirection)
	#standard input 0
	#standard output 1
	#standard error 2
</pre>

<pre>
	ll 1> file_name or ll > mydir
	ll 1> create_File
	ll 1> create_File  2> create_Error_File
	lli 1> create_File  2> create_Error_File
	ll >> create_File  2>&1 (both success and error)
	df -h
	history
	history > createfile
	cat filename | sort
	cat filename | sort | wc(word count)
	cat filename | sort tee filename
</pre>


























