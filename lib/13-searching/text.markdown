Task
----
 - insert randomly generated numbers into a set
 - insert one-by-one
 - the set must not contain duplicates after a insertion
 - return a sorted set, with the requested size, after the last insertion


Solutions
---------
### 1. Hash
Insert unless key exists, sort at the end

include 1

### 2. Array
Insert unless element is included, sort at the end

include 2

### 3. Sorted-Linked-List
A linked list of sorted elements, for easy injection.
    @head = {:value=>1,:next=>{:value=>3,:next=>nil}}
Go thorugh the elements until the insertion position is found.

include 3

Using an array (`[2,[3,[5,nil]]]`) instead of the more-readable `hash[:next]`, only saves 1/100th of the time.

### 4. Sorted Array
Place elements in a sorted Array, find insertion position using binary-search.

include 4


Time
----
 1.  O(n) - lookups always take the same time
 2.  O(n²) - the longer the array, the longer the lookup takes
 3.  O(n²) - the longer the array, 1/2(mean) the longer the lookup takes
 4.  n log n - divide and conquer


Performance
-----------
Inserting x items in 2 seconds:
 1.  200.000
 2.  5.000
 3.  ~1.250
 4.  20.000


Conclusion
----------
 - nothing beats linear time
 - when in doubt choose native objects over self-built (2. vs 3.)
 - when self-built has a lower 'time', investigate performance