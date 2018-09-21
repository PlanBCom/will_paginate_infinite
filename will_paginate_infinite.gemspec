lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'version'
Gem::Specification.new do |s|
  s.name        = 'will_paginate_infinite'
  s.version     = '0.1.4'
  s.date        = '2018-09-21'
  s.summary     = "Will Paginate with infinite scroll"
  s.description = "Will Paginate with infinite scroll"
  s.authors     = ["Adriano Godoy"]
  s.email       = 'godoy.ccp@gmail.com'

  s.files       = `git ls-files -z`.split("\x0")
  s.require_paths = ["lib"]


  s.homepage    = 'https://github.com/PlanBCom/will_paginate_infinite'
  s.license     = 'MIT'
  s.rdoc_options = ['--main', 'README.md', '--charset=UTF-8']
  s.extra_rdoc_files = ['README.md']

  s.add_runtime_dependency "will_paginate", '~> 3.0', '>= 3.0.3'
end
