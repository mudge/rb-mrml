# frozen_string_literal: true

require_relative "mrml/version"

begin
  RUBY_VERSION =~ /(\d+\.\d+)/
  require "mrml/#{Regexp.last_match(1)}/mrml"
rescue LoadError
  require "mrml/mrml"
end
