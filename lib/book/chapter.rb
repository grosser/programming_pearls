class Chapter
  def initialize(folder)
    @folder = folder
  end

  def to_markdown
    text = heading
    text += read('text.markdown')
    text.gsub(/^include ([^\s]*)$/){"\n"+extract_code_from_file($1)}
  end

private

  def heading
    chapter = File.basename(@folder.gsub('-',' '))
    "Chapter #{chapter}\n"+
    "==================\n"+
    "\n"
  end

  def to_markdown_code(text)
    text.split("\n").map{|t|"    #{t}"}*"\n"
  end

  def extract_code_from_file(file)
    code = "# #@folder/#{file}\n"
    text = read(file)
    raise text unless text =~ /#----excerpt(.*)#----excerpt/m
    code += $1
    to_markdown_code(code)
  end

  def read(file)
    path = "#{@folder}/#{file}"
    return '' unless File.exist? path
    File.read(path)
  end
end