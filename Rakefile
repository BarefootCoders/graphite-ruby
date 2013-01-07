# encoding: utf-8

require "rubygems"
require "bundler/setup"
require "rake"

begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => exception
  $stderr.puts exception.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit exception.status_code
end

require "rspec/core"
require "rspec/core/rake_task"
RSpec::Core::RakeTask.new(:spec) do |spec|
  spec.pattern = FileList["spec/**/*_spec.rb"]
end

RSpec::Core::RakeTask.new(:rcov) do |spec|
  spec.pattern = "spec/**/*_spec.rb"
end

task default: :spec
