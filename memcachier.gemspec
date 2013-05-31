Gem::Specification.new do |s|
  s.name        = 'memcachier'
  s.version     = '0.0.2'
  s.date        = '2011-01-30'
  s.summary     = "Compatibility gem for using memcached libraries with MemCachier"
  s.description = "Simple gem that sets the memcached environment variables to the values of corresponding memcachier environment variables.
                   This makes it seemless to use MemCachier in environments like Heroku using the Dalli or other compatible memcached gem."
  s.authors     = ["Amit Levy"]
  s.email       = 'support@memcachier.com'
  s.files       = ["lib/memcachier.rb", "LICENSE"]
  s.homepage    = 'http://www.memcachier.com'
  s.license     = "MIT"
end
