 - [1,2,3] rotate it once and we have [2,3,1]
 - Rotation of more than one step at a time is difficult

Constraints
-----------
 - rotate without extra memory usage (no copies)


Solutions
---------
### 1 * x
rote once, x times
include 1.rb

### re-arrange in a copy
Making copies is not allowed, but if it where it would be this simple.
Make a copy, and re-arrange inside of it.
include 2.rb

### juggeling solution
temp<-1 then 1<-4<-8<-12 then 12<-temp
include 3.rb