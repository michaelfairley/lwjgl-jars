# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'lwjgl-jars/version'

Gem::Specification.new do |spec|
  spec.name          = "lwjgl-jars"
  spec.version       = Lwjgl::Jars::VERSION
  spec.authors       = ["Michael Fairley"]
  spec.email         = ["michaelfairley@gmail.com"]
  spec.description   = %q{LWJGL's jars}
  spec.summary       = %q{LWJGL's jars}
  spec.homepage      = "https://github.com/michaelfairley/lwjgl-jars"
  spec.license       = "MIT"
  spec.platform      = "java"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
