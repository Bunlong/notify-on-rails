# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'notify/on/rails/version'

Gem::Specification.new do |spec|
  spec.name          = "notify-on-rails"
  spec.version       = Notify::On::Rails::VERSION
  spec.authors       = ["Bunlong"]
  spec.email         = ["bunlong.van@gmail.com"]

  spec.summary       = %q{notify-on-rails is a simple standard Bootstrap alerts  notifications.}
  spec.description   = %q{notify-on-rails is a simple standard Bootstrap alerts  notifications.}
  spec.homepage      = "https://github.com/Bunlong/notify-on-rails"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
end
