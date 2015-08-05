lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'subset_generator/version'

Gem::Specification.new do |spec|
  spec.name          = "subset_generator"
  spec.version       = SubsetGenerator::VERSION
  spec.authors       = ["Thiago Brandão"]
  spec.email         = ["thiagobrandam@gmail.com"]

  spec.summary       = %q{SubsetGenerator is a tool aimed to generate a subset of your database.}
  spec.description   = %q{
    SubsetGenerator is a tool aimed to ... generate a subset of your database :)

    Don't worry, though: It won't actually touch your database, it will
    simply generate a stream of SQL `SELECT` statements based on some user-provided options and your Rails models associations.
  }
  spec.homepage      = "http://github.com/thiagobrandam/subset_generator"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency 'pry'
end
