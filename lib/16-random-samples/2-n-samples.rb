n = 20
m = 50

#----excerpt
#Same as before, but the list is limited...
list = (1..200).to_a[0..m]
#----excerpt
samples = []
while samples.length != n
  samples << rand(list.length)
  samples.uniq!
end
samples.map!{|i|list[i]}

puts samples.inspect