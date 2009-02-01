require File.join(File.dirname(__FILE__),'..','..','helpers','helper')
input = open(assets('dictionary.txt')).read.split("\n")

#----excerpt
anagrams = Hash.new([])
input.each {|word| anagrams[word.split('').sort] += [word]}
anagrams.each do |anagram,words|
  words.uniq!
  next if words.size == 1
  puts "#{anagram} = #{words*', '}"
end
#----excerpt
