require_relative 'lib/rubygems_test_repo_3fd2/version'

Gem::Specification.new do |spec|
  spec.name          = "rubygems_test_repo_3fd2"
  spec.version       = RubygemsTestRepo3fd2::VERSION
  spec.authors       = ["RyanJarv"]
  spec.email         = ["ryan_gerstenkorn@fastmail.fm"]

  spec.summary       = %q{Dummy package to analyze automated download counts on rubygems}
  spec.description       = %q{
  Since no real user would want to or might accidentally install this package it should work as a reference on how many automated pulls a gem might get.
}
  spec.homepage      = "https://blog.ryanjarv.sh"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/RyanJarv/rubygems_test_repo_3fd2"
  spec.metadata["changelog_uri"] = "https://github.com/RyanJarv/rubygems_test_repo_3fd2"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
