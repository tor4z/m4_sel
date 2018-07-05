# GNU M4 SEL

### Change the quoting

```m4
# Change the quoting characters to curly braces
changequote({, })dnl

# Restore the defauls, simply call changequote with no argument
changequoe
```

### When to quoting

Any text surrounded by `’ (a grave accent and an acute accent) isn’t
expanded immediately.

In general, for safety, it’s a good idea to quote all input text
that isn’t a macro call. This avoids m4 interpreting a literal
word as a call to a macro. Another way to avoid this problem is
by using the GNU m4 option --prefix-builtins or -P. It changes all
built-in macro names to be prefixed by m4_. (The option doesn’t affect
user-defined macros.) So, under this option, you’d write m4_dnl and
m4_define instead of dnl and define, respectively.


###  Built-In m4 Macros

|Macro| 	Description|
|-----|--------------------|
|changecom(l,r)|		Changes the left and right comment characters to the characters represented by l and r. The two characters must be different.|
|changequote(l,r)| 		Changes the left and right quote characters to the characters represented by l and r. The two characters must be different.|
|decr(n)| 			Returns the value of n-1.|
|define(name,replacement)| 	Defines a new macro, named name, with a value of replacement.|
|defn(name)| 			Returns the quoted definition of name.|
|divert(n)| 			Changes the output stream to the temporary file number n.|
|divnum| 			Returns the number of the currently active temporary file.|
|dnl| 				Deletes text up to a newline character.|
|dumpdef(`name'[,`name'...])| 	Prints the names and current definitions of the named macros.|
|errprint(str)| 		Prints str to the standard error file.|
|eval(expr)| 			Evaluates expr as a 32-bit arithmetic expression.|
|ifdef(`name',arg1,arg2)| 	If macro name is defined, returns arg1; otherwise, returns arg2.|
|ifelse(str1,str2,arg1,arg2)| 	Compares the strings str1 and str2. If they match, ifelse returns the value of arg1; otherwise, it returns the value of arg2.|
|include(file) sinclude(file)| 	Returns the contents of file. The sinclude macro does not report an error if it cannot access the file.|
|incr(n)| 			Returns the value of n+1.|
|index(str1,str2)| 		Returns the character position in string str1 where str2 starts, or -1 if str1 does not contain str2.|
|len(str) dlen(str)| 		Returns the number of characters in str. The dlen macro operates on strings containing 2-byte representations of international characters.|
|m4exit(code)| 			Exits m4 with a return code of code.|
|m4wrap(name)| 			Runs macro name before exiting, after completing all other processing.|
|maketemp(strXXXXXstr)| 	Creates a unique file name by replacing the literal string XXXXX in the argument string with the current process ID.|
|popdef(name)| 			Replaces the current definition of name with the previous definition, saved with the pushdef macro.|
|pushdef(name,replacement)| 	Saves the current definition of name and then defines name to be replacement in the same way as define.|
|shift(param_list)| 		Shifts the parameter list leftward one position, destroying the original first element of the list.|
|ubstr(string,pos,len)| 	Returns the substring of string that begins at character position pos and is len characters long.|
|syscmd(command)| 		Executes the specified system command with no return value.|
|sysval| 			Gets the return code from the last use of the syscmd macro.|
|traceoff(macro_list)| 		Turns off trace for any macro in the list. If macro_list is null, turns off all tracing.|
|traceon(name)| 		Turns on trace for the named macro. If name is null, turns trace on for all macros.|
|translit(string,set1,set2)| 	Replaces any characters from set1 that appear in string with the corresponding characters from set2.|
|undefine(`name')| 		Removes the definition of the named macro.|
|undivert(n,n[,n...])| 		Appends the contents of the indicated temporary files to the current temporary file.|