require File.join(File.dirname(__FILE__),'..','..','helpers','helper')
input = open(assets('bible.txt'))

# displaying all words
#----excerpt
puts input.readlines(' ').uniq * "\n"
#----excerpt