require File.join(File.dirname(__FILE__),'..','..','helpers','helper')
input = open(assets('bible.txt'))
text = input.read(10_000)# thats 10-times the value from 1.rb

longest = ''
time = measure do
  #store each suffix
  suffixes = []
  0.upto(text.length) {|i| suffixes << text[i..text.length]}

  #sort them so that equals are next to each other
  suffixes.sort!

  suffixes.each_with_index {|suffix,i|
    common = common_prefix(suffix,suffixes[i+1])
    longest = common if common.length > longest.length
  }
end

puts time
puts longest