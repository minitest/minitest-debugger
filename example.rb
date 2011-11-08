# require 'minitest/debugger'
require 'minitest/autorun'

class TestMiniTestUnitTestCase < MiniTest::Unit::TestCase
  def good
    42
  end

  def test_assert
    assert_equal 42, good
  end

  def wrong
    24
  end

  def test_assert_failure
    assert_equal 42, wrong
  end

  def bad
    raise "no"
  end

  def test_assert_error
    assert_equal 42, bad
  end
end
