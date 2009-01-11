require File.join(File.dirname(__FILE__),'..','..','helpers','helper')
input = open(assets('bible.txt'))
text = input.read(1_000)

# find the longest duplicate substring
# complexity = n*n/2
longest = ''
time = measure do
  0.upto(text.length) {|start|
    0.upto(text.length-start) {|offset|
      substring = text[start..(start+offset)]
      longest = substring if substring.length > longest.length and text.scan(substring).length == 2
    }
  }
end
puts time
puts longest