require_relative 'lib/version'

Gem::Specification.new do |s|
  s.name         = 'git-amend'
  s.version      = GitAmend::VERSION
  s.date         = GitAmend::DATE
  s.summary      = 'Update git commit info.'
  s.description  = 'A CLI tool to update the information of exisiting git commit, such as commit date, auther, etc.'
  s.authors      = ['Daniel Han']
  s.email        = 'hex0cter@gmail.com'
  s.homepage     = 'https://github.com/hex0cter/git-amend'
  s.metadata     = { "source_code_uri" => "https://github.com/hex0cter/git-amend" }
  s.required_ruby_version = '>= 2.2'
  s.add_runtime_dependency 'timerizer', '~> 0'

  s.files        = Dir["{lib}/**/*.rb", "bin/*", "LICENSE", "*.md"]
  s.require_path = 'lib'
  s.executables = ['git-amend']
  s.homepage     = 'http://rubygems.org/gems/git-amend'
  s.license      = 'MIT'
end
