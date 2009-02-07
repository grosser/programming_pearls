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

  file = "output/book.html"
  `rm -f #{file}`
  `cp assets/book.template.html #{file}`
  template = File.read(file).sub('INSERT_BODY_HERE',Book.new('lib').to_html)
  File.open(file,'w'){|f|f.puts template}
end

task :zip do
  compress('output')
end

def compress(path)
  gem 'rubyzip'
  require 'zip/zip'
  require 'zip/zipfilesystem'

  path.sub!(%r[/$],'')
  archive = File.join(path,File.basename(path))+'.zip'

  FileUtils.rm archive, :force=>true
  Zip::ZipFile.open(archive, 'w') do |zipfile|
    Dir["#{path}/**/**"].reject{|f|f==archive}.each do |file|
      zipfile.add(file.sub(path+'/',''),file)
    end
  end
end