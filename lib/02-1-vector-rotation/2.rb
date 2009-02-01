vector = %w[a b c d e f g h i j]

#----excerpt
def rotate(vector,steps)
  copy = vector.dup
  vector.each_index do |i|
    vector[i]=copy[(i+steps) % vector.length]
  end
end
#----excerpt

vector.length.times {|i|
  puts rotate(vector.dup,i) * ', '
}