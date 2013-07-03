require 'rake/testtask'

task :default => [:test]

Rake::TestTask.new do |t|
  t.libs << ["tests", "problems"]
  t.pattern = 'tests/*.rb'
end
