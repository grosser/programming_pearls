require File.join(File.dirname(__FILE__),'..','..','helpers','helper')
input = open(assets('bible.txt'))
text = input.read(30_000)# thats 60-times the value from 1.rb

#----excerpt
longest = ''
time = measure do
  #store each suffix
  suffixes = []
  0.upto(text.length) do |start|
    suffixes << text[start..text.length]
  end

  #sort them so that equals are next to each other
  suffixes.sort!

  suffixes.each_with_index do |suffix,i|
    common = common_prefix(suffix,suffixes[i+1])
    longest = common if common.length > longest.length
  end
end
#----excerpt

puts time
puts longest