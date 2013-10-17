# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'zemus/version'

Gem::Specification.new do |spec|
  spec.name          = "zemus"
  spec.version       = Zemus::VERSION
  spec.authors       = ["Jon Dodson", "Mark Tabler"]
  spec.email         = ["jdodson@cheerfulghost.com", "mark.tabler@fallingmanstudios.net"]
  spec.description   = %q{Embeds various media URLs as viewable content}
  spec.summary       = %q{Parses and embeds various media URLs as viewable content}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
