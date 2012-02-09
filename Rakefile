require 'bundler'
require 'rake/clean'
require 'rubygems'
require 'cucumber'
require 'cucumber/rake/task'

Bundler::GemHelper.install_tasks

spec = eval(File.read('wkhtmltopdfify.gemspec'))

# require 'rspec/core/rake_task'
# desc "Run RSpec"
# RSpec::Core::RakeTask.new do |spec|
#   spec.pattern = 'spec/**/*_spec.rb'
#   spec.rspec_opts = ['--color', '--format nested']
# end

Cucumber::Rake::Task.new(:features) do |t|
  t.cucumber_opts = "features"
  t.fork = false
end

desc "Run tests, both RSpec and Cucumber"
task :test => [:features] # add ':spec, ' into the array when it is ready

task :default => :test
