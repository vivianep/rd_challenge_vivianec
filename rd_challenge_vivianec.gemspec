# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rd_challenge_vivianec/version'

Gem::Specification.new do |spec|
  spec.name          = "rd_challenge_vivianec"
  spec.version       = RdChallengeVivianec::VERSION
  spec.authors       = ["Viviane Costa"]
  spec.email         = ["vivianecosta2794@gmail.com"]

  spec.summary       = "This is a service to provide a easy insertion of Leads in a Salesforce account"
  spec.homepage      = "https://github.com/vivianep/rd_challenge_vivianec"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  
  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.add_dependency 'databasedotcom'
  spec.add_development_dependency 'sass-rails'

  spec.add_development_dependency 'rspec' 
  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
end

