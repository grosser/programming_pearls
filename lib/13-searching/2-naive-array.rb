#----excerpt
class SetArray
  def initialize(maximum_value)
    @maximum = maximum_value
  end
  
  def generate(size)
    raise "size too big" if size >= @maximum #would runs endless
    @set = []
    while @set.size < size
      random = rand(@maximum)
      @set << random unless @set.include?(random)
    end
    @set.sort
  end
end
#----excerpt

puts SetArray.new(500_000).generate(5_000)*'-'#thats 1/40th of the SetHash size