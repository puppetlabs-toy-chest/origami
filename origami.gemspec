$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = 'origami'
  s.version     = '0.0.1'
  s.authors     = [ 'Puppetlabs', 'Atsuya Kumano' ]
  s.email       = [ 'sqa@puppetlabs.com' ]
  s.homepage    = 'https://github.com/puppetlabs/origami'
  s.summary     = 'An abstraction over VeeWee definitions'
  s.description = 'This provides an easy way to write template for ' +
                  'VeeWee definition folders in Ruby'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency 'rspec', '~>2.11'
  s.add_development_dependency 'fakefs', '0.4'
  s.add_development_dependency 'rake'
end
