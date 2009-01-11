require File.join(File.dirname(__FILE__),'..','..','helpers','helper')
input = open(assets('bible.txt'))

# all words sorted by occurance
occurances = Hash.new(0)
input.each(' ').each{|word| occurances[word]+=1}
puts occurances.to_a.sort_by(&:last).map{|x|x*' times '} * "\n"