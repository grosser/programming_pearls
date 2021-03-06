require 'maruku'

class Book
  def initialize(chapter_path)
    @chapter_path=chapter_path
  end

  def to_html
    Maruku.new(chapters.map(&:to_markdown) * "\n").to_html
  end

private

  def chapters
    FileList[@chapter_path+"/??-*"].sort.map{|folder|Chapter.new(folder)}
  end
end