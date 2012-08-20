# -*- encoding: utf-8 -*-
require File.expand_path('../lib/patterntap/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Mark Hayes"]
  gem.email         = ["mark@zurb.com"]
  gem.description   = %q{Access PatternTap feed}
  gem.summary       = %q{Access PatternTap feed}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "patterntap"
  gem.require_paths = ["lib"]
  gem.version       = Patterntap::VERSION
end
