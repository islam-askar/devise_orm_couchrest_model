$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "devise_orm_couchrest_model/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "devise_orm_couchrest_model"
  s.version     = DeviseOrmCouchrestModel::VERSION
  s.authors     = ["Islam Askar"]
  s.email       = ["islam.askar@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of DeviseOrmCouchrestModel."
  s.description = "TODO: Description of DeviseOrmCouchrestModel."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_runtime_dependency 'couchrest_model', '>= 2.0.4'
  s.add_runtime_dependency 'orm_adapter_couchrest_model', '>= 0.0.1'
  s.add_runtime_dependency 'devise', '>= 4.1.1'
  s.add_development_dependency "bundler", ">= 1.3"
  s.add_development_dependency "rake"

  
end
