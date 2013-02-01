# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'passbook/version'

Gem::Specification.new do |gem|
  gem.authors       = ["Thomas Lauro"]
  gem.email         = ["thomas@lauro.fr"]
  gem.description   = %q{Passbook gem let's you create pkpass for passbook iOS 6}
  gem.summary       = %q{Passbook gem let's you create pkpass for passbook iOS 6}
  gem.homepage      = "https://github.com/frozon/passbook"

  # gem.files         = `git ls-files`.split($\)
  gem.files         = Dir.glob('{app,config,lib}/**/*') + %w(Gemfile LICENSE README.md Rakefile)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "passbook"
  gem.require_paths = ["lib"]
  gem.version       = Passbook::VERSION

  gem.add_dependency 'rubyzip'
end
