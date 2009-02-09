Task
----
 - build and maintain a sorted heap
 - insert from bottom or top
 - extract the smallest element
 - build a sort method, to sort any array, using the heap

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

### Extract the smallest element
The heap is sorted, so the top element will always be the smallest.  
Take it out and insert the last element from top, to restore the order 
(since we do not know if the second or third element is the smallest)

include 3

### Sort an Array using a heap
Fill the heap with the elements of the array and then extract the smallest 
until the array is empty.

include 4

Runtime: (n * time to find the minimum) + (n/2 * time for insert), see table below.

Comparison of runtime to other implementations
----------------------------------------------

<table>
<tr>
 <td></td>
 <th>insert</th>
 <th>find minimum</th>
 <th>n of each</th>
</tr>
<tr>
 <th>Sorted Array</th>
 <td>O(n)</td>
 <td>O(1)</td>
 <td>O(n²)</td>
</tr>
<tr>
 <th>Heap</th>
 <td>O(log n)</td>
 <td>O(log n)</td>
 <td>O(n log n)</td>
</tr>
<tr>
 <th>Unsorted Array</th>
 <td>O(1)</td>
 <td>O(n)</td>
 <td>O(n²)</td>
</tr>
</table>