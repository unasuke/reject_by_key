# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'reject_by_key/version'

Gem::Specification.new do |spec|
  spec.name          = "reject_by_key"
  spec.version       = RejectByKey::VERSION
  spec.authors       = ["Yusuke Nakamura"]
  spec.email         = ["yusuke1994525@gmail.com"]

  spec.summary       = %q(Implementation of the Hash#reject_by_key)
  spec.description   = %q(Hash#reject_by_key is return hash that rejected passed key element.)
  spec.homepage      = %q(https://github.com/unasuke/reject_by_key)
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
