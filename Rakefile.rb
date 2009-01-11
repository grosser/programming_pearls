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