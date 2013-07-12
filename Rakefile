require 'rake/testtask'

task :default => [:test]

Rake::TestTask.new do |t|
  t.libs << ["test", "lib"]
  t.test_files = FileList['test/kaize_test/*.rb']
  t.pattern = 'test/*.rb'
end
