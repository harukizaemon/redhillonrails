Gem::Specification.new do |s|
  s.name     = "acts_as_teapot"
  s.version  = "1.0.2"
  s.date     = "2009-01-11"
  s.summary  = "Ensure your Ruby on Rails applications conform to RFC2324."
  s.email    = "haruki.zaemon@gmail.com"
  s.homepage = "http://github.com/harukizaemon/acts_as_teapot"
  s.description = "Ensure your Ruby on Rails applications conform to RFC2324."
  s.has_rdoc = true
  s.authors  = ["Simon Harris"]
  s.files    = ["CHANGELOG.rdoc",
                "MIT-LICENSE",
                "README.rdoc",
                "acts_as_teapot.gemspec",
                "lib/acts_as_teapot.rb",
                "lib/haruki_zaemon/acts_as_teapot/action_controller/abstract_request.rb",
                "lib/haruki_zaemon/acts_as_teapot/action_controller/dispatcher.rb",
                "lib/haruki_zaemon/acts_as_teapot/action_controller/routing.rb",
                "lib/haruki_zaemon/acts_as_teapot/action_controller/status_codes.rb"]
  s.rdoc_options = ["--main", "README.rdoc"]
  s.extra_rdoc_files = ["CHANGELOG.rdoc", "README.rdoc"]
end
