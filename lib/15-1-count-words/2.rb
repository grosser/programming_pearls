require File.join(File.dirname(__FILE__),'..','..','helpers','helper')
input = open(assets('bible.txt'))

#----excerpt
occurances = Hash.new(0)
input.each(' ').each{|word| occurances[word]+=1}
puts occurances.to_a.sort_by{|word,count|count}.map{|x|x*' times '} * "\n"
#----excerpt