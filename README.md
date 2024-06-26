We copy and pasted these both run\_metal.sh and template.cfg in the each 8 tissue directories and executed the run\_metal.sh script.
In the template.cfg file, we inserted a placeholder (@) which get replaced with the list of files that is going to be processed.

The shell script line :


L=$(echo *tbl |sed 's/ /!PROCESS /g' | sed 's/^/PROCESS /'


of the run\_metal.sh list all the .tbl files and add "PROCESS" (command that is used to execute the files in METAL) infront of each.tbl file in the specific directory, making each .tbl file executable. 
Moreover, "!PROCESS" also get added after every .tbl file. It should be noted that "!PROCESS" is only get added just to differentiate the one .tbl file from another.
The results of this line of code will be saved under the variable name "L"


L=$(echo *tbl |sed 's/ /!PROCESS /g' | sed 's/^/PROCESS /'


In this line of code from run\_metal.sh, we substituted the results of the variable "L" with the placeholder (@) in the template.cfg and 
the final pipeline of code which is used to run the METAL software in the terminal will be saved under the configuration script "metal.cfg".
