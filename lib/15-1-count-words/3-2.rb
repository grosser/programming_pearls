require File.join(File.dirname(__FILE__),'..','..','helpers','helper')
input = open(assets('bible.txt'))

#----excerpt
occurances = nil
processing = measure do
  occurances = Hash.new(0)
  input.read.split(' ').each{|word| occurances[word]+=1}
end
printing = measure do
  puts occurances.to_a.sort_by{|word,count|count}.map{|x|x*' times '} * "\n"
end
#----excerpt

puts "RESULTS: "
puts " process:#{processing} print:  #{printing}"
