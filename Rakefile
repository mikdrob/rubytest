require 'rake/testtask'
require 'rdoc/task'

desc 'Run rubocop and test tasks (default task)'
task :allTests do
  Rake::Task[:rubocop].invoke
  Rake::Task[:test].invoke
end

desc 'Run rubocop'
task :rubocop do
  require 'rubocop/rake_task'
  RuboCop::RakeTask.new
end

desc 'Run tests'
Rake::TestTask.new(:test) do |t|
  t.libs << 'test'
  t.libs << 'lib'
  t.libs << 'lib/courses'
  t.libs << 'lib/students'
  t.test_files = FileList['test/**/test_*.rb']
end

desc 'Generate documentation'
RDoc::Task.new do |rdoc|
  rdoc.main = 'README.markdown'
  rdoc.rdoc_files.include('README.markdown', 'lib/**/*.rb')
  rdoc.rdoc_dir = 'doc'
end

task default: :allTests
