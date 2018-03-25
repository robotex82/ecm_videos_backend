$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "ecm/videos/backend/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "ecm_videos_backend"
  s.version     = Ecm::Videos::Backend::VERSION
  s.authors     = ["Roberto Vasquez Angel"]
  s.email       = ["roberto@vasquez-angel.de"]
  s.homepage    = "https://github.com/robotex82/ecm_videos_backend"
  s.summary     = "Ecm::Videos::Backend."
  s.description = "Ecm::Videos::Backend Module."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails"
  s.add_dependency "ecm_core"
end
