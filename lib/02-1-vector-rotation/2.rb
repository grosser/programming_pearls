vector = %w[a b c d e f g h i j]

# pricey solution
# O(n) + extra space
def rotate(vector,steps)
  copy = vector.dup
  vector.each_index {|i|
    vector[i]=copy[(i+steps) % vector.length]
  }
end

vector.length.times {|i|
  puts rotate(vector.dup,i) * ', '
}