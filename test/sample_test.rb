#!/usr/bin/env ruby
# frozen_string_literal: true

require "test/unit"
require_relative "test_helper"
require_relative "../lib/closed_range"

class TC_Sample < Test::Unit::TestCase
  def setup
    @obj = Sample.new
  end

  def teardown
  end

  def test_say
    assert_equal("Hello TDD BootCamp!", @obj.say)
  end
end
