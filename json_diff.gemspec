# frozen_string_literal: true

require_relative 'lib/json_diff/version'

Gem::Specification.new do |spec|
  spec.name          = 'json_diff'
  spec.version       = JsonDiff::VERSION
  spec.authors       = %w[Nardo\ Nykolyszyn]
  spec.email         = %w[nardonykolyszyn@gmail.com]

  spec.summary       = 'A Fast JSON comparison gem'
  spec.description   = 'This library allows you to compare complex JSON files really quickly'
  spec.homepage      = 'https://github.com/nardonykolyszyn/json_diff.git'
  spec.license       = 'GPL'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.3.0')

  spec.metadata['source_code_uri'] = 'https://github.com/nardonykolyszyn/json_diff.git'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.require_paths = ['lib']

  spec.add_development_dependency 'pry', '~> 0.13.0'
end
