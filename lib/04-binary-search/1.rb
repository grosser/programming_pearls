def binary_find(range,number)
  middle = range.length/2
  chosen = range[middle]

  return middle if chosen == number
  return nil if range.length <= 1

  if chosen < number
    #search in the upper range, add middle to resulting index
    found = binary_find(range[middle..-1],number)
    if found then middle+found else nil end
  else
    #search in lower range
    binary_find(range[0...middle],number)
  end
end

ran_from_cli = __FILE__ == $0
if ran_from_cli
  #an array of sorted integers (1-10, to make it understandable, could be 1,5,10**4)
  input = [0,1,2,3,4,5,6,8,9]
  [1,2,3,5,7,8,10].each {|x| puts "#{binary_find(input,x)} <-> #{input.index(x)}"}
end
