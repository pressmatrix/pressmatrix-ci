# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pressmatrix/ci/version'

Gem::Specification.new do |spec|
  spec.name          = "pressmatrix-ci"
  spec.version       = Pressmatrix::Ci::VERSION
  spec.authors       = ["Alexander Hoth"]
  spec.email         = ["alexander.hoth@pressmatrix.de"]

  spec.summary       = %q{CI Runner for Pressmatrix}
  spec.description   = %q{CI Runner for Pressmatrix}
  spec.homepage      = "https://www.pressmatrix.de"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "rspec-nc"
  spec.add_development_dependency "guard"
  spec.add_development_dependency "guard-rspec"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "pry-remote"
  spec.add_development_dependency "pry-nav"
end
