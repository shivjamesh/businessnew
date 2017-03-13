# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "GENUINE"
  spec.version       = '1.0'
  spec.authors       = ["shiv"]
  spec.email         = ["shiva.shivjamesh@gmail.com"]
  spec.summary       = %q{Just a testing summary}
  spec.description   = %q{just one more test}
  spec.homepage      = "http://google.com/"
  spec.license       = "MIT"

  spec.files         = ['lib/NAME.rb']
  spec.executables   = ['bin/NAME']
  spec.test_files    = ['tests/test_NAME.rb']
  spec.require_paths = ["lib"]
end
