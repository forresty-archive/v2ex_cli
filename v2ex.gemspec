# -*- encoding: utf-8 -*-
require File.expand_path('../lib/v2ex_cli/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Forrest Ye"]
  gem.email         = ["afu@forresty.com"]
  gem.description   = %q{Command line interface to v2ex.com}
  gem.summary       = %q{Command line intreface to v2ex.com}
  gem.homepage      = ""

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "v2ex"
  gem.require_paths = ["lib"]
  gem.version       = V2exCli::VERSION
end
