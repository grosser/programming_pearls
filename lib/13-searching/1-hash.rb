# use a hash to store the set in its keys
class SetHash
  def initialize(maximum_value)
    @maximum = maximum_value
  end
  def generate(size)
    raise "size too big" if size >= @maximum #would runs endless
    @set = {}
    while @set.size < size
      random = rand(@maximum)
      @set[random]=true unless @set[random]
    end
    @set.keys.sort
  end
end

puts SetHash.new(500_000).generate(200_000)*'-'