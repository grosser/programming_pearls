require File.join(File.dirname(__FILE__),'..','..','helpers','helper')

# use a linked hashes
# @head = {:value=>1,:next=>{:value=>2,:next=>nil}}
class SetLinked
  def initialize(maximum_value)
    @maximum = maximum_value
  end

  def generate(size)
    raise "size too big" if size >= @maximum #would runs endless
    reset
    insert(rand(@maximum)) while @size < size
    flatten
  end

  def reset
    @head = nil
    @size = 0
  end

  def flatten
    flat = []
    link = @head
    while true
      flat << link[:value]
      break unless link[:next]
      link = link[:next]
    end
    flat
  end

  #insert a number if its new, and update @size counter
  def insert(number)
    return if include?(number)
    @head = insert_link(@head,number)
    @size += 1
  end

  def insert_link(link,number)
    return {:value=>number,:next=>link} if not link or number <= link[:value]
    link[:next] = insert_link(link[:next],number)
    link
  end
  
  def include?(number)
    link = @head
    while link
      return true if link[:value] == number
      return false if link[:value] > number
      link = link[:next]
    end
    return false
  end
end

#thats 1/200th of the SetHash size
#using array instead of the more-readable hash[:next], only saves 1/100th of the time
#going over 1_200 results in "stack level to deep" (non-recursive solution is longer/uglier...)
puts SetLinked.new(500_000).generate(1_150) * '-'