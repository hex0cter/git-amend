require_relative 'lib/version'

Gem::Specification.new do |s|
  s.name         = 'git-shuffle'
  s.version      = GitShuffle::VERSION
  s.date         = GitShuffle::DATE
  s.summary      = 'Shuffle the git commit date'
  s.description  = 'A CLI tool to shuffle the commit date of your git repository'
  s.authors      = ['Daniel Han']
  s.email        = 'hex0cter@gmail.com'
  s.homepage     = 'https://github.com/hex0cter/git-shuffle'
  s.metadata     = { "source_code_uri" => "https://github.com/hex0cter/git-shuffle" }
  s.required_ruby_version = '>= 2.2'
  s.add_runtime_dependency 'timerizer', '~> 0'

  s.files        = Dir["{lib}/**/*.rb", "bin/*", "LICENSE", "*.md"]
  s.require_path = 'lib'
  s.executables = ['git-shuffle']
  s.homepage     = 'http://rubygems.org/gems/git-shuffle'
  s.license      = 'MIT'
end
