Task
----
Find the longest duplicate substring in a text.

Solutions
---------
### Simple but slow
Go through all possible substrings, and see if they are

 - longer than the current longes duplicate substring
 - occure > 2 times in the text

Time: O(n²)
include 1

### Suffix array
 - Build a suffix-array, where each possible suffix is stored  
   abc -> `[abc,bc,c]`
 - Sort this array to to move substrings that start with the same letters nearby
 - find the longest commong prefix 2 neighboring suffixes share  
   `[a,abc,abd,ac]` -> longest duplicate substring is 'ab'

Time: O(n)
include 2