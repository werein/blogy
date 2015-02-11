$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "blogy/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "blogy"
  s.version     = Blogy::VERSION
  s.authors     = ["Jiri Kolarik"]
  s.email       = ["jiri.kolarik@wereinhq.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of Blogy."
  s.description = "TODO: Description of Blogy."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.0"

  s.add_development_dependency "factory_girl_rails"
  s.add_development_dependency "minitest-spec-rails"
  s.add_development_dependency "mocha"
  s.add_development_dependency "sqlite3"
end
