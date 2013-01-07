# encoding: utf-8

lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |gem|
  gem.name          = "graphite-ruby"
  gem.version       = "1.0.0"
  gem.authors       = ["Jey Balachandran"]
  gem.email         = ["jey.balachandran@gmail.com"]
  gem.summary       = %q{Sends measurements to Graphite via UDP}
  gem.description   = %q{Sends measurements to Graphite via UDP}
  gem.homepage      = "http://github.com/jeyb/graphite-ruby"
  gem.license       = "MIT"
  gem.files         = `git ls-files`.split($/)
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.required_ruby_version = ">= 1.9.2"

  gem.add_development_dependency "debugger", "~> 1.2.2"
  gem.add_development_dependency "rake"
  gem.add_development_dependency "rspec", "~> 2.12.0"
end
