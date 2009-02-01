vector = %w[a b c d e f g h i j]

#----excerpt
#helper
def swap(vector,i,j)
  j %= vector.length
  vector[i], vector[j] = vector[j], vector[i]
end

def rotate(vector,steps)
  steps.times {
    (vector.length-1).times {|i| swap(vector,i,i+1)}
  }
  vector
end
#----excerpt

vector.length.times {|i|
  puts rotate(vector.dup,i) * ', '
}