require 'bundler'
require 'rake/clean'
require 'rubygems'
require 'cucumber'
require 'cucumber/rake/task'

Bundler::GemHelper.install_tasks

spec = eval(File.read('wkhtmltopdfify.gemspec'))

require 'rake/testtask'
Rake::TestTask.new do |t|
  t.libs << "test"
  t.test_files = FileList['test/test*.rb']
end

CLOBBER << 'tmp'
Cucumber::Rake::Task.new(:features) do |t|
  t.cucumber_opts = "features"
  t.fork = false
end

task :default => :test
