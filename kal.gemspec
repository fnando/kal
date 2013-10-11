require "./lib/kal/version"

Gem::Specification.new do |spec|
  spec.name          = "kal"
  spec.version       = Kal::VERSION
  spec.authors       = ["Nando Vieira"]
  spec.email         = ["fnando.vieira@gmail.com"]
  spec.description   = %[A simple HTML calendar for Rails]
  spec.summary       = spec.description
  spec.homepage      = "https://github.com/fnando/kal"
  spec.license       = "MIT"

  spec.files         = Dir["LICENSE.txt", "README.md", "lib/**/*"]
  spec.test_files    = Dir["spec/**/*"]
  spec.require_paths = ["lib"]
end
