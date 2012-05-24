# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "resque-enqueue-logger"
  s.version     = "0.0.5"
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["bray"]
  s.email       = ["brian.ray1@gmail.com"]
  s.homepage    = "http://github.com/bray/resque-enqueue-logger"
  s.summary     = %q{Resque plugin that adds simple logging after enqueueing a job.}
  s.description = %q{Resque plugin that adds simple logging after enqueueing a job.}

  s.rubyforge_project = "resque-enqueue-logger"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
