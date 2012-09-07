# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "namespaced_redis"

Gem::Specification.new do |s|
  s.name        = "namespaced_redis"
  s.version     = NamespacedRedis::VERSION
  s.authors     = ["Stewart McKee"]
  s.email       = ["stewart@theizone.co.uk"]
  s.homepage    = "https://github.com/stewartmckee/namespaced_redis"
  s.summary     = "Adds a namespace to redis"
  s.description = "Returns a namespaced version of redis"

  s.rubyforge_project = "namespaced_redis"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
   s.add_runtime_dependency "redis"
end
