$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "omniavatar/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "omniavatar"
  s.version     = Omniavatar::VERSION
  s.authors     = ["Craig Ambrose"]
  s.email       = ["craig@enspiral.com"]
  s.homepage    = 'http://github.com/enspiral/omniavatar'
  s.summary     = %q{Provides avatars from a variety of sources.}
  s.description = gem.description

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  gem.add_dependency "carrierwave", "~> 0.9"
  s.add_dependency "rails", "~> 3.2.14"
  # s.add_dependency "jquery-rails"

  s.add_development_dependency "sqlite3"
  gem.add_development_dependency 'rspec', '~> 2.14'
end
