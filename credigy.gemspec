lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "credigy/version"

Gem::Specification.new do |spec|
  spec.name          = "credigy"
  spec.version       = Credigy::VERSION
  spec.authors       = ["Glauco Custódio"]
  spec.email         = ["glauco.custodio@gmail.com"]

  spec.summary       = %q{Um cliente (não oficial) para o serviço SOAP da Credigy}
  spec.description   = %q{Um cliente (não oficial) para o serviço SOAP da Credigy}
  spec.homepage      = "https://github.com/glaucocustodio/credigy"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'savon', '~> 2'
  spec.add_dependency 'activesupport'

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "pry-nav"
end
