class Chapter
  CODE_PER_LINE = 64
  #list followed by code would include this code, so breaklast element by \n+some invisible content
  CLEARER = "\n<span></span>\n"

  def initialize(folder)
    @folder = folder
  end

  def to_markdown
    text = heading
    text += read('text.markdown')
    text.gsub(/^include ([^\s]*)$/){CLEARER+extract_code_from_file($1)}
  end

private

  def heading
    chapter = File.basename(@folder.gsub('-',' '))
    CLEARER +
    "Chapter #{chapter}\n"+
    "==================\n"+
    "\n"
  end

  def to_markdown_code(text)
    text = text.split("\n")
    text.map!{|line| cut_and_fix_too_long_lines(line,CODE_PER_LINE)}.flatten!
    text.map{|t|"    #{t}"}*"\n"
  end

  # cut lines that are too long, into multiple
  # - preserve words
  # - preserve indentation
  # - fix cutting-issues
  def cut_and_fix_too_long_lines(line,max_length)
    max_length -= 3#since we will add 3 chars indentation to split lines
    indentation = line.match(/^\s*/)[0]
    lines = []
    new_line = indentation
    line.split.each do |word|
      if (new_line+" "+word).chars.count < max_length
        new_line += " "+word
      else
        lines << new_line
        # start with previous indendation + some extra indentation +
        # return symbol(may not show in YOUR font...) + word
        new_line = indentation+'   ' + "⏎" + word
      end
    end
    lines << new_line
    lines
  end

  def extract_code_from_file(file)
    file = Dir["#@folder/#{file}*"][0]
    code = "# #{file}\n"
    text = File.read(file)
    raise "#----excerpt missing, insert before/after code you want to include!\n\n"+text unless text =~ /#----excerpt(.*)#----excerpt/m
    code += $1
    to_markdown_code(code)
  end

  def read(file)
    path = "#{@folder}/#{file}"
    return '' unless File.exist? path
    File.read(path)
  end
end