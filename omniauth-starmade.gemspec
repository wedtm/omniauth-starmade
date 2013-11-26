# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "omniauth-starmade/version"

Gem::Specification.new do |s|
  s.name        = "omniauth-starmade"
  s.version     = OmniAuth::Starmade::VERSION
  s.authors     = ["Miles Smith"]
  s.email       = ["miles@vimae.com"]
  s.homepage    = "https://github.com/wedtm/omniauth-starmade"
  s.summary     = %q{OmniAuth strategy for StarMade Registry}
  s.description = %q{OmniAuth strategy for StarMade Registry }
  s.license     = "MIT"

  s.files         = `git ls-files`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency 'multi_json', '~> 1.3'
  s.add_runtime_dependency 'omniauth-oauth', '~> 1.0'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'webmock'
end
