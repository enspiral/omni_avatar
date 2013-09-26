# -*- encoding: utf-8 -*-
require File.dirname(__FILE__) + '/lib/omniavatar/version'

Gem::Specification.new do |gem|
  gem.add_dependency "orm_adapter", "~> 0.4"
  gem.add_dependency 'activerecord'
  gem.add_dependency "carrierwave", "~> 0.9"

  gem.add_development_dependency 'rspec', '~> 2.14'

  gem.name = 'omniavatar'
  gem.version = OmniAvatar::VERSION
  gem.description = %q{Provides avatars from a variety of sources.}
  gem.summary = gem.description
  gem.email = ['craig@enspiral.com']
  gem.homepage = 'http://github.com/enspiral/omniavatar'
  gem.authors = ['Craig Ambrose']
  gem.executables = `git ls-files -- bin/*`.split("\n").map{|f| File.basename(f)}
  gem.files = `git ls-files`.split("\n")
  gem.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.require_paths = ['lib']
  gem.required_rubygems_version = Gem::Requirement.new('>= 1.3.6') if gem.respond_to? :required_rubygems_version=
end