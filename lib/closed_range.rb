#!/usr/bin/env ruby
# frozen_string_literal: true

class ClosedRange
  attr_accessor :upper, :lower

  def initialize(lower, upper)
    @lower = lower
    @upper = upper
    if @lower > @upper then raise ArgumentError.new end
  end

  def to_s
    "[#{@lower},#{@upper}]"
  end

  def contains?(val)
    lower <= val && val <= upper
  end

  def equal_range?(range)
    if range.class != ClosedRange
      raise ArgumentError.new
    end
    @lower == range.lower && @upper == range.upper
  end
end
