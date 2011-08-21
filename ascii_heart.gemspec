# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "ascii_heart/version"

Gem::Specification.new do |s|
  s.name        = "ascii_heart"
  s.version     = AsciiHeart::VERSION
  s.authors     = ["Jason Gilman"]
  s.email       = ["jason.gilman@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{A module that will draw an ASCII art heart.}
  s.description = %q{My (late) contribution to _why day.  Defines a module and executable that will draw an ASCII art heart.}

  s.rubyforge_project = "ascii_heart"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

end
