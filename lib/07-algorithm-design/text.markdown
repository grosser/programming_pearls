Task
----
Find the maximum sum inside a range.  
`[1,2,-4,2,4,-3,1]` => `[2,4]` => 6


Solutions
---------
### Cubic time O(n³)
Find the maximum of every possible sub-range.

include 1

### Quadratic time O(n²)
Find the maximum of every possible sub-range.  
Do not calculate the sum for every sub-range, rather just add each new element.

`[1,2,3]`: `[1]` => 1; `[1,2]` = 1+2 = 3; `[1,2,3]` = 3+3 = 6

include 2

### Less than quadratic time O(n²)
Find the maximum of every possible sub-range.  
Build sums, where `sums[2] == range[0...2].sum`
and therefore `range[1...3] = sums[1]-sums[3]`

include 3

### Logarithmic time O(n log n)
Divide the problem into 2 smaller, equal problems. (compare: Binary search)
Maximum of left / right and the maximum of ranges, that cross the middle are comparen.

include 4

### Linear time O(n)
Compare the sums of all sub-parts. A part ends when its sum drops below 0.
include 5