lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'version'
Gem::Specification.new do |s|
  s.name        = 'will_paginate_infinite'
  s.version     = '0.0.1'
  s.date        = '2016-07-15'
  s.summary     = "Will Paginate with infinite scroll"
  s.description = "Will Paginate with infinite scroll"
  s.authors     = ["Adriano Godoy"]
  s.email       = 'godoy.ccp@gmail.com'

  s.files       = `git ls-files -z`.split("\x0")
  s.require_paths = ["lib"]


  s.homepage    =
    'http://rubygems.org/gems/will_paginate_infinite'
  s.license       = 'MIT'

  s.add_runtime_dependency "will_paginate"
end
