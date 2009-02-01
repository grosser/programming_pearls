desc 'Default: run test'
task :default => :test

desc "Run all files in lib"
task :test do |t|
  files = FileList['lib/**/*.rb']
  files.sort.each {|path|
    puts path
    puts `ruby #{path}`
  }
end

task :to_html do
  require 'lib/book/book'
  require 'lib/book/chapter'
  File.open('book.html','w'){|f| f.puts Book.new('lib').to_html}
end