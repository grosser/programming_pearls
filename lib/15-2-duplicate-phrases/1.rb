require File.join(File.dirname(__FILE__),'..','..','helpers','helper')
input = open(assets('bible.txt'))
text = input.read(500)

# find the longest duplicate substring
# complexity = n*n/2
#----excerpt
longest = ''
time = measure do
  0.upto(text.length) do |start|
    start.upto(text.length) do |last|
      substring = text[start..last]
      longest = substring if substring.length > longest.length and text.scan(substring).count == 2
    end
  end
end
#----excerpt
puts time
puts longest