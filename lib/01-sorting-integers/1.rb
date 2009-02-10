#write the integers to a file
#just to make it simple&fast, they are not unique and only 100_000
#make them all the same length
integers = []
20_000.times{integers<<rand(1_000_000_000).to_s.rjust(11,'0')}

`mkdir -p temp`
File.open('temp/list','w'){|f|f.puts integers * "\n"}

class QuickFileInlineSorter
  def initialize(file)
    @file = file
    @input = File.open(file,'r')
    @chars_per_num = @input.gets.length + 1
    @num_files = 0
  end

  def sort(max_memory)
    @max_memory = max_memory
    temp_files = quick_sort_with_files(@input).flatten
    @input.close

    #copy the tempfiles contents back to the input file
    File.open(@file,'w') do |output|
      temp_files.each do |temp|
        if temp.is_a? Fixnum
          output.puts temp.to_s.rjust(@chars_per_num-2,'0')
        else
          temp.pos = 0
          output.print temp.read
          temp.close
        end
      end
    end
  end

private
#----excerpt
  def quick_sort_with_files(input)
    num_lines = (input.stat.size / @chars_per_num)
    return sort_in_memory(input) if num_lines <= @max_memory

    left = new_temp_file
    right = new_temp_file

    middle = line_in_middle(input).to_i

    input.rewind
    while line = input.gets
      if line.to_i < middle
        left.puts line
      elsif line.to_i > middle
        right.puts line
      end
    end

    left.flush
    right.flush

    return [quick_sort_with_files(left), middle, quick_sort_with_files(right)]
  end
#----excerpt

  def sort_in_memory(input)
    input.pos = 0
    data = input.readlines.sort
    input.close
    new = new_temp_file
    new.print data
    return new
  end

  def line_in_middle(input)
    input.pos = (input.stat.size / 12 / 2) * 12 #clean out the uneven
    input.gets
  end

  def new_temp_file
    File.open("temp/temp_#{@num_files+=1}",'w+')
  end
end


QuickFileInlineSorter.new('temp/list').sort(5_000)
puts File.readlines('temp/list')[-10..-1]
`rm -rf temp`