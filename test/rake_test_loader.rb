require 'rake'

ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../../Gemfile', __FILE__)
require 'bundler/setup'

require 'active_record'
require 'vines'
require 'ext/nokogiri'
require 'minitest/autorun'
require 'bcrypt'
require 'http/parser'
require 'em-http'
require 'em-hiredis'
require 'base64'
require 'net/ldap'
require 'mongo'
require 'active_support/json'
require 'tmpdir'


# Load the test files from the command line.

ARGV.each do |f|
  next if f =~ /^-/

  if f =~ /\*/
    FileList[f].to_a.each { |fn| require File.expand_path(fn) }
  else
    require File.expand_path(f)
  end
end
