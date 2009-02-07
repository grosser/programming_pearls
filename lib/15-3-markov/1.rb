require File.join(File.dirname(__FILE__),'..','..','helpers','helper')
require 'rubygems'
require 'activesupport'
input = open(assets('bible.txt'))

# markov order-1 text generation from words
text = input.read(1_000_000).split(' ')

#----excerpt
#build possible_successors for any used word
possible_successors = Hash.new([])
0.upto(text.length-1) do |i|
  possible_successors[text[i]] << text[i+1]
end

#build text by randomly adding possible_successors
random_text = [text.first]
0.upto(50).map do |i|
  random_text << possible_successors[random_text.last].rand
end

puts random_text * ' '
#----excerpt