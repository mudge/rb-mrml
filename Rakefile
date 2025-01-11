# frozen_string_literal: true

require "bundler/gem_tasks"
require "minitest/test_task"
require "rb_sys/extensiontask"

Minitest::TestTask.create

task build: :compile

GEMSPEC = Gem::Specification.load("rb-mrml.gemspec")

RbSys::ExtensionTask.new("mrml", GEMSPEC) do |ext|
  ext.lib_dir = "lib/mrml"
end

task default: %i[compile test]
