require File.join(File.dirname(__FILE__),'..','..','helpers','helper')
input = open(assets('dictionary.txt')).read.split("\n")

# store each word in a hash, where the key is the words letters sorted
# and the values are all words with the same letters
# so they are anagrams
# then remove all those that only represent a single word
# eenprsst = presents, serpents

anagrams = Hash.new([])
input.each {|word| anagrams[word.split('').sort] += [word]}
anagrams.each {|anagram,words|
  words.uniq!
  next if words.size == 1
  puts "#{anagram} = #{words*', '}"
}