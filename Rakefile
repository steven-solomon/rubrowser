require 'bundler/gem_tasks'
require 'rubocop/rake_task'
require 'rspec/core/rake_task'
require 'English'

task :s do
  ruby './bin/rubrowser'
end

task :feature_spec do
  Dir.chdir('feature_tests') do
    system 'rake'
  end
  raise 'Feature tests failed' unless $CHILD_STATUS.exitstatus.zero?
end

task all: %I[feature_spec spec rubocop] do
end

RuboCop::RakeTask.new(:rubocop) do |t|
  t.options = ['--display-cop-names']
end

RSpec::Core::RakeTask.new(:spec)

task default: :all
