$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "blogy/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "blogy"
  s.version     = Blogy::VERSION
  s.authors     = ["Jiri Kolarik"]
  s.email       = ["jiri.kolarik@wereinhq.com"]
  s.homepage    = "https://wereinhq.com"
  s.summary     = "Plug and play mountable engine for blog."
  s.description = "Mountable engine with blog management in your API."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.0"
  s.add_dependency "responders", "~> 2.1"
  s.add_dependency "enumerize"
  s.add_dependency "kramdown"
  s.add_dependency "coderay"

  s.add_development_dependency "active_model_serializers", "~> 0.8"
  s.add_development_dependency "factory_girl_rails"
  s.add_development_dependency "minitest-spec-rails"
  s.add_development_dependency "mocha"
  s.add_development_dependency "sqlite3"
  s.add_development_dependency "codeclimate-test-reporter"
end
