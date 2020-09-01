require_relative 'lib/apgdb/version'

Gem::Specification.new do |spec|
  spec.name          = "apgdb"
  spec.version       = Apgdb::VERSION
  spec.authors       = ["Christoph Henrici"]
  spec.email         = ["chhenrici@gmail.com"]

  spec.summary       = %q{Example Apg Jdbc Connection Handler}
  spec.description   = %q{This is intended for demo purposes only }
  spec.homepage      = "http://chesnb.com"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")
  spec.platform = 'java'

  spec.metadata["allowed_push_host"] = "http://172.16.92.193:9292"

  spec.metadata["homepage_uri"] = spec.homepage

  spec.add_dependency 'sequel',  '~> 5.35', '>= 5.35.0'
  spec.files = Dir[ 'jars/*', 'lib/**/*' ,'Gemfile',  '*.gemspec']
  spec.bindir        = "bin"
  spec.executables   = 'console'
  spec.require_paths = ["lib"]
end
