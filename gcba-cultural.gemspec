# -*- encoding: utf-8 -*-
require File.expand_path('../lib/gcba-cultural/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["jproyo"]
  gem.email         = ["juanpablo.royo@gmail.com"]
  gem.description   = %q{This gem is a gem to consume cultural information from GCBA and twit day events}
  gem.summary       = %q{Consume cultural information fro GCBA and twit it}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "gcba-cultural"
  gem.require_paths = ["lib", "bin"]
  gem.version       = Gcba::Cultural::VERSION
end
