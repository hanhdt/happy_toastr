
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'happy_toastr/version'

Gem::Specification.new do |spec|
  spec.name          = 'happy_toastr'
  spec.version       = HappyToastr::VERSION
  spec.authors       = ['Hanh Tran']
  spec.email         = ['tranduchanh.ms@gmail.com']

  spec.summary       = 'A wrapper Rails gem of ToastrJS lib'
  spec.description   = 'Simple toast notifications.'
  spec.homepage      = 'https://github.com/hanhdt/happy_toastr'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
  spec.platform      = Gem::Platform.local
  spec.required_ruby_version = '>= 1.9.0'

  spec.files         = `git ls-files`.split("\n")
  spec.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  spec.add_development_dependency 'bundler', '~> 1.16.a'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end
