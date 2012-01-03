# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "vines/version"

Gem::Specification.new do |s|
  s.name    = "vines"
  s.version = Vines::VERSION

  s.summary     = "Vines is an XMPP chat server that's easy to install and run."
  s.description = "Vines is an XMPP chat server that supports thousands of
simultaneous connections by using EventMachine for asynchronous IO. User data
is stored in a SQL database, CouchDB, MongoDB, Redis, the file system, or a
custom storage implementation that you provide. LDAP authentication can be used
so user names and passwords aren't stored in the chat database. SSL encryption
is mandatory on all client and server connections."

  s.authors      = ["David Graham"]
  s.email        = %w[david@negativecode.com]
  s.homepage     = "http://www.getvines.com"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency "eventmachine", "~> 1.0.0.beta4"
  s.add_dependency "http_parser.rb", "~> 0.5"
  s.add_dependency "nokogiri", "~> 1.4"

  s.add_development_dependency "minitest", "= 2.2.2"
  s.add_development_dependency "rake"
  s.add_development_dependency "sqlite3"

  s.required_ruby_version = '>= 1.9.2'
end
