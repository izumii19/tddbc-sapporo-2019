#!/usr/bin/env ruby
# frozen_string_literal: true

require "test/unit"
require_relative "test_helper"
require_relative "../lib/closed_range"

class ClosedRangeTest < Test::Unit::TestCase
  sub_test_case "下端点が上端点より小さい場合" do
    def setup
      @closed_range = ClosedRange.new(3, 8)
    end

    def test_閉区間クラスが生成できる
      assert_instance_of(ClosedRange, @closed_range)
    end

    def test_閉区間の文字列を取得できる
      assert_equal("[3,8]", @closed_range.to_s)
    end

    def test_閉区間に含まれることを判定できる
      assert_true(@closed_range.contains?(5))
    end

    def test_閉区間に含まれないことを判定できる
      assert_false(@closed_range.contains?(9))
      assert_false(@closed_range.contains?(2))
    end

    def test_閉区間が等価であることを判定する
      assert_true(@closed_range.equal_range?(ClosedRange.new(3, 8)))
    end
  end

  sub_test_case "下端点が上端点より大きい場合" do
    def test_閉区間は作れない
      assert_raises(ArgumentError) { ClosedRange.new(8, 3) }
    end
    def test_閉区間の判定に他の型が渡されたら判定出来ない
      range = ClosedRange.new(3, 8)
      assert_raises(ArgumentError) { range.equal_range?(Array.new) }
    end
  end
end
