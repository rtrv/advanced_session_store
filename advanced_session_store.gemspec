lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name         = 'advanced_session_store'
  spec.version      = '0.0.1'
  spec.authors      = ['Artem Krivonozhko']
  spec.email        = ['artemkrivonozhko@gmail.com']

  spec.summary      = 'Server-side session store for Rails application.'
  spec.description  = spec.summary + ' It uses Redis and handles race ' \
                       'conditions of concurrent requests. Currently based ' \
                       'on the redis-session-store gem'
  spec.homepage     = 'https://github.com/rtrv/advanced_session_store'
  spec.license      = 'MIT'

  spec.has_rdoc = true
  spec.extra_rdoc_files = %w[LICENSE AUTHORS.md CONTRIBUTING.md]

  spec.files = `git ls-files -z`.split("\x0")
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'redis', '~> 3'
  spec.add_runtime_dependency 'actionpack', '>= 3', '< 5.2'

  spec.add_development_dependency 'bundler', '~> 1.16'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end
