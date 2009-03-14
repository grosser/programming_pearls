n = 20

#----excerpt
list = (1..200).to_a
samples = []
while samples.length != n
  samples << rand(list.length)
  samples.uniq!
end
samples.map!{|i|list[i]}
#----excerpt

puts samples.inspect