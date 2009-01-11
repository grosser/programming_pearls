vector = %w[a b c d e f g h i j]

#helper
def swap(vector,i,j)
  j %= vector.length
  vector[i], vector[j] = vector[j], vector[i]
end

# intuitive solution
# rotate by shifting one position, steps-times
# O(n*steps)
def rotate(vector,steps)
  steps.times {
    (vector.length-1).times {|i| swap(vector,i,i+1)}
  }
  vector
end

vector.length.times {|i|
  puts rotate(vector.dup,i) * ', '
}