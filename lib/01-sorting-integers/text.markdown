Tasks and solutions
-------------------
 - sort a list of 1.000.000 unique integers
 - do not loading them into memory

### Quick inline file sort
Take a value from the middle of the file,  
put anything larger in file right, anything smaller in file left.  
Recurse until the file is smaller than our memory-limit, then sort it with array.sort.  
At the end, put all temp-file-pieces back together.

Disadvantage:  
Needs many temp-files, that stay opened until the end

include 1