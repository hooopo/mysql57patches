# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mysql57patches/version'

Gem::Specification.new do |spec|
  spec.name          = "mysql57patches"
  spec.version       = Mysql57patches::VERSION
  spec.authors       = ["Hooopo"]
  spec.email         = ["hoooopo@gmail.com"]

  spec.summary       = %q{my57}
  spec.description   = %q{my57}
  spec.homepage      = "https://twitter.com/hooopo"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
