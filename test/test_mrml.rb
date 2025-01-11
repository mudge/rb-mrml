# frozen_string_literal: true

require "minitest/autorun"
require "rb-mrml"

class TestMRML < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::MRML::VERSION
  end

  def test_it_produces_html
    assert_includes MRML.to_html("<mjml><mj-body></mj-body></mjml>"), "<!doctype html>"
  end

  def test_it_raises_an_argument_error_given_invalid_mjml
    error = assert_raises(ArgumentError) { MRML.to_html("<mjml>") }

    assert_includes error.message, "unexpected end of stream"
  end

  def test_it_raises_an_argument_error_given_an_unexpected_element
    error = assert_raises(ArgumentError) { MRML.to_html("<mjml><mj-text></mj-text></mjml>") }

    assert_includes error.message, "unexpected element"
  end
end
