# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'easy_callbacks/version'

Gem::Specification.new do |spec|
  spec.name          = 'easy_callbacks'
  spec.version       = EasyCallbacks::VERSION
  spec.authors       = ['Federico Farina']
  spec.email         = ['federicojosefarina@gmail.com']

  spec.summary       = 'Lightweight library that lets you define callbacks for regular ruby methods.'
  spec.description   = 'Define callbacks for regular ruby methods.'
  spec.homepage      = 'https://github.com/fedefa/easy_callbacks'
  spec.license       = 'MIT'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
  spec.add_dependency 'activemodel', '~> 6.1'
  spec.add_development_dependency 'bundler', '~> 1.17'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end
