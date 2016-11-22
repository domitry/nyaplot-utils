# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'nyaplot/version'

Gem::Specification.new do |spec|
  spec.name          = "nyaplot-utils"
  spec.version       = "0.1.1"
  spec.authors       = ["Naoki Nishida"]
  spec.email         = ["domitry@gmail.com"]
  spec.summary       = %q{Small tools for Nyaplot}
  spec.description   = %q{Small tools for Nyaplot}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'watir'
  spec.add_runtime_dependency 'nokogiri'

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
