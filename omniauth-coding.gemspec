# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'omniauth-coding/version'

Gem::Specification.new do |spec|
  spec.name          = "omniauth-coding"
  spec.version       = OmniAuth::Coding::VERSION
  spec.authors       = ["liujun"]
  spec.email         = ["lj90214@gmail.com"]

  spec.summary       = %q{Omniauth strategy for Coding.}
  spec.description   = %q{Omniauth strategy for Coding.}
  spec.homepage      = "https://github.com/krufyliu/omniauth-coding"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.executables   = `git ls-files -z bin/*`.split("\x0").map{ |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "omniauth", "~> 1.0"
  spec.add_dependency "omniauth-oauth2", ">= 1.1.1", "< 2.0"

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
