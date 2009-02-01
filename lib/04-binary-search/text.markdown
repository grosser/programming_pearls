Task
----
 - for a sorted set `[1,2,4,5,6]` what index has 4 ?
 - return nil when it is not contained

Solution
--------

### Simple
    list.index(value)

### Binary search
Grab the middle element, if it is to large, continue left of the middel.
If it is to small, continue right of the middel.  
Return nil when no elements are left in the search space.

include 1.rb

Test
----
include 2.rb