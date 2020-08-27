<h1>Python keyword</h1>
<p>Python Keywords is a word having special meaning reserved by programming language</p>
<table class="table">
	<tr class="success">
		<td>False</td>
		<td>None</td>
		<td>True</td>
		<td>and</td>
		<td>as</td>
	</tr>
	<tr>
		<td>assert</td>
		<td>async</td>
		<td>await</td>
		<td>break</td>
		<td>class</td>
	</tr>
	<tr class="success">
		<td>continue</td>
		<td>def</td>
		<td>del</td>
		<td>elif</td>
		<td>else</td>
	</tr>
	<tr>
		<td>except</td>
		<td>finally</td>
		<td>for</td>
		<td>from</td>
		<td>global</td>
	</tr>
	<tr class="success">
		<td>if</td>
		<td>import</td>
		<td>in</td>
		<td>is</td>
		<td>lambda</td>
	</tr>
	<tr>
		<td>nonlocal</td>
		<td>not</td>
		<td>or</td>
		<td>pass</td>
		<td>raise</td>
	</tr>
	<tr class="success">
		<td>return</td>
		<td>try</td>
		<td>while</td>
		<td>with</td>
		<td>yield</td>
	</tr>
</table>
<pre id="codepre">
import keyword
# if is predefine identifier  so that ture
print(keyword.iskeyword("if"))
# super is not predefine identifier  so that false
print(keyword.iskeyword(super))
# import is predefine identifier  so that true
print(keyword.iskeyword("import"))
# Ashutosh is predefine identifier  so that false
print(keyword.iskeyword("Ashutosh"))
</pre>
<pre id="outputpre">
True
False
True
False
</pre>