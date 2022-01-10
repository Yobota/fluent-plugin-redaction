# encoding: utf-8
$:.push File.expand_path('../lib', __FILE__)

Gem::Specification.new do |gem|
  gem.name = "yo-fluent-plugin-redaction"
  gem.description = "Fluentd redaction filter plugin for anonymize specific strings in text data."
  gem.license = "MIT"
  gem.homepage = "https://github.com/Yobota/fluent-plugin-redaction"
  gem.summary = gem.description
  gem.version = File.read("VERSION").strip
  gem.authors = ["Oliver Szabo", "Yobota"]
  gem.email = ["hello@yobota.com"]
  #gem.platform    = Gem::Platform::RUBY
  gem.files = `git ls-files`.split("\n")
  gem.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.executables = `git ls-files -- bin/*`.split("\n").map {|f| File.basename(f)}
  gem.require_paths = ['lib']

  gem.add_runtime_dependency 'fluentd', ['>= 1.0', '< 2']
  gem.add_development_dependency "rake",      ["~> 11.0"]
  gem.add_development_dependency 'test-unit', '~> 3.3', '>= 3.3.3'
  gem.add_development_dependency 'test-unit-rr', '~> 1.0', '>= 1.0.5'
end
