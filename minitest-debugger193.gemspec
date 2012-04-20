Gem::Specification.new do |gem|
  gem.authors       = ['Ryan Davis', 'Mario Uher']
  gem.email         = ['ryand-ruby@zenspider.com', 'uher.mario@gmail.com']
  gem.description   = 'minitest-debugger fixed to work with Ruby 1.9.3'
  gem.summary       = 'minitest-debugger fixed to work with Ruby 1.9.3'

  gem.files         = `git ls-files`.split("\n")
  gem.name          = 'minitest-debugger193'
  gem.require_path  = 'lib'
  gem.version       = '1.0.0'

  gem.add_dependency 'minitest', '~> 2.7'
  gem.add_dependency 'debugger'

  gem.add_development_dependency 'hoe', '~> 2.12'
  gem.add_development_dependency 'rdoc', '~> 3.9'
end