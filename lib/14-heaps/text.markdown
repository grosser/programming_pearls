Task
----
 - build and maintain a sorted heap
 - insert from bottom or top

Solutions
---------
A heap, where each nodes children are higher then their parent.
          2
       3     4
      5 7  10 12
Converted to an array, by going from top to bottom and left to right,  
results in `[2,3,4,5,7,10,12]`.

### Insertion from bottom
Append to the array and then let the new element flow up (swap with parent)  
until it reaches a parent that is higher than itself.

include 1

### Insertion from top
Prepend to the array and then let the new element sink down  
(swap with smallest child) until it reaches a pair of children that  
are lower than itself or a position without any children.

include 2
