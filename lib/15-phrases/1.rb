# find the longest duplicate substring
text = "Ask not what your country can do for you, but what you can do for your country"
max = 0
0.upto(text.length) {|start|
  0.upto(text.length-start) {|offset|
    substring = text[start..(start+offset)]
    max = [max,substring.strip.length].max if text.scan(substring).length == 2
  }
}
puts max 
puts "'can do for you' --> 14"