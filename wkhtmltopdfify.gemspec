# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "wkhtmltopdfify/version"

Gem::Specification.new do |s|
  s.name        = "wkhtmltopdfify"
  s.version     = Wkhtmltopdfify::VERSION
  s.authors     = ["Dave Thompson"]
  s.email       = ["dave@blueheadpublishing.com"]
  s.summary     = "wkhtmltopdfify is a gem for installing the wkhtmltopdf command line tool for converting html documents to pdf."
  s.description = "wkhtmltopdfify is a gem for installing the wkhtmltopdf command line tool for converting html documents to pdf."
  s.license     = "MIT"

  s.rubyforge_project = "wkhtmltopdfify"
  

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = ['wkhtmltopdf']
  s.require_paths = ["lib"]

  # specify any dependencies here;
  s.add_development_dependency "rspec"
  s.add_development_dependency "aruba"
end
