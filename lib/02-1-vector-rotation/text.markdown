Task
----
 - rotate a given vector of length n, m places
 - rotate without extra memory usage (no copies of the vector)


Solutions
---------
`[1,2,3]` rotated one place is `[2,3,1]`.  
Rotation of more than one step at a time is difficult.


### 1 * x
rotate one place, x times
include 1.rb

### re-arrange in a copy
Making copies is not allowed, but if it where it would be this simple.
Make a copy, and re-arrange inside of it.
include 2.rb

### juggeling solution
temp<-1 then 1<-4<-8<-12 then 12<-temp
include 3.rb