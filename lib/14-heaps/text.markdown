Task
----
 - build and maintain a sorted heap

Solutions
---------
A heap, where each nodes children are lower then their parent.
         2
       3    4
      5 7 10 12
When we look at this as array, it would be `[2,3,4,5,7,10,12]`.
To insert a new element, we simply append to the array  
and then let the new element flow up (swap with parent)  
until it reaches a parent that is lower higher higher than itself.

include 1
