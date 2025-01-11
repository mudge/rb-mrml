# frozen_string_literal: true

require_relative "lib/mrml/version"

Gem::Specification.new do |spec|
  spec.name = "rb-mrml"
  spec.version = MRML::VERSION
  spec.license = "BSD-3-Clause"
  spec.authors = ["Paul Mucur"]
  spec.summary = "Ruby bindings to MRML"
  spec.description = "Ruby bindings to MRML, a reimplementation of the MJML markup language in Rust."
  spec.homepage = "https://github.com/mudge/rb-mrml"
  spec.metadata = {
    "bug_tracker_uri" => "https://github.com/mudge/rb-mrml/issues",
    "changelog_uri" => "https://github.com/mudge/rb-mrml/blob/main/CHANGELOG.md",
    "funding_uri" => "https://github.com/sponsors/mudge",
    "homepage_uri" => "https://github.com/mudge/rb-mrml",
    "source_code_uri" => "https://github.com/mudge/rb-mrml",
    "rubygems_mfa_required" => "true"
  }
  spec.required_ruby_version = ">= 2.7.0"
  spec.files = [
    "Cargo.lock",
    "Cargo.toml",
    "LICENSE",
    "README.md",
    "ext/mrml",
    "ext/mrml/Cargo.toml",
    "ext/mrml/extconf.rb",
    "ext/mrml/src",
    "ext/mrml/src/lib.rs",
    "lib/mrml",
    "lib/mrml.rb",
    "lib/rb-mrml.rb",
    "lib/mrml/version.rb"
  ]
  spec.extensions = ["ext/mrml/extconf.rb"]
  spec.add_dependency("rb_sys", "~> 0.9.107")
end
