# use a plain array
# other method: use a sorted array and use binary search to find insertion position
class SetArray
  def initialize(maximum_value)
    @maximum = maximum_value
  end
  def generate(size)
    raise "size too big" if size >= @maximum #would runs endless
    @set = []
    while @set.size < size
      random = rand(@maximum)
      found, position = binary_find(random)
      @set.insert(position,random) unless found
    end
    @set
  end
  # search inside the ordered @set
  # return [found,position] where position is where it was found
  # or if not found, where it should be inserted
  def binary_find(value,left=0,right=@set.length-1)
    length_to_search = right+1-left
    middle = left + length_to_search/2

    #found or not found?
    return [true,middle] if @set[middle] == value
    if length_to_search <= 1
      middle += 1 if @set[middle] and @set[middle] < value
      return [false,[middle,0].max]
    end

    #not sure yet, recurse!
    if @set[middle] > value
      binary_find(value,left,middle-1)
    else
      binary_find(value,middle+1,right)
    end
  end
end

puts SetArray.new(500_000).generate(20_000)*'-'#thats 1/10th of the SetHash size