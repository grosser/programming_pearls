require 'rational'
vector = %w[a b c d e f g h i j]

# juggeling solution
# O(n) + extra space
def rotate(vector,distance)
  length = vector.length
  distance.gcd(length).times {|start|
    temp = vector[start]
    offset = start
    while true do
      swap_with = (offset + distance) % length
      break if swap_with == start
      vector[offset] = vector[swap_with]
      offset = swap_with
    end
    vector[offset] = temp
  }
  vector
end

vector.length.times {|i|
  puts rotate(vector.dup,i) * ', '
}