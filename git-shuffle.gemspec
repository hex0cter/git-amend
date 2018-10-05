require_relative 'lib/version'

Gem::Specification.new do |s|
  s.name         = 'git-udpate'
  s.version      = GitUpdate::VERSION
  s.date         = GitUpdate::DATE
  s.summary      = 'Update git commit info.'
  s.description  = 'A CLI tool to update the information of exisiting git commit, such as commit date, auther, etc.'
  s.authors      = ['Daniel Han']
  s.email        = 'hex0cter@gmail.com'
  s.homepage     = 'https://github.com/hex0cter/git-update'
  s.metadata     = { "source_code_uri" => "https://github.com/hex0cter/git-update" }
  s.required_ruby_version = '>= 2.2'
  s.add_runtime_dependency 'timerizer', '~> 0'

  s.files        = Dir["{lib}/**/*.rb", "bin/*", "LICENSE", "*.md"]
  s.require_path = 'lib'
  s.executables = ['git-update']
  s.homepage     = 'http://rubygems.org/gems/git-update'
  s.license      = 'MIT'
end
