#----excerpt
def binary_find(range,searched)
  middle = range.length/2
  chosen = range[middle]

  return middle if chosen == searched
  return nil if range.length <= 1

  if chosen < searched
    #search in the upper range, add middle to resulting index
    found = binary_find(range[middle..-1],searched)
    if found then middle+found else nil end
  else
    #search in lower range
    binary_find(range[0...middle],searched)
  end
end
#----excerpt

ran_from_cli = __FILE__ == $0
if ran_from_cli
  #an array of sorted integers (1-10, to make it understandable, could be 1,5,10**4)
  input = [0,1,2,3,4,5,6,8,9]
  [1,2,3,5,7,8,10].each {|x| puts "#{binary_find(input,x)} <-> #{input.index(x)}"}
end
