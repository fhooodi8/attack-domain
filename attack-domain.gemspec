# coding: utf-8
lib = File.expand_path('lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'attack/domain/version'

Gem::Specification.new do |spec|
  spec.name          = "attack-domain"
  spec.version       = Attack::Domain::VERSION
  spec.authors       = ["TechArch"]
  spec.email         = ["TODO: "]

  spec.summary       = %q{TODO: Write a short summary, because Rubygems requires one.}
  spec.description   = %q{TODO: Write a longer description or delete this line.}
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."
  
  spec.files         = Dir.glob('lib/**/*.rb')   # code
  spec.files        += Dir.glob('extras/*')   # code
  
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  
  spec.require_paths = ["lib"]
  
  spec.add_dependency "dnsruby"
  spec.add_dependency "whois"
  
  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "yard"
  spec.add_development_dependency "awesome_print"
end
