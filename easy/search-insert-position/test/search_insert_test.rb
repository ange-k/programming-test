require 'minitest/autorun'
require_relative '../main'

class SearchInsertTest < MiniTest::Unit::TestCase
  def test_example1
    result = search_insert([1,3,5,6], 5)
    assert result == 2
  end
  def test_example2
    result = search_insert([1,3,5,6], 2)
    assert result == 1
  end
  def test_example3
    result = search_insert([1,3,5,6], 7)
    assert result == 4
  end
  def test_example4
    result = search_insert([1,3,5,6], 0)
    assert result == 0
  end
  def test_example5
    result = search_insert([1,3], 3)
    assert result == 1
  end
  def test_example6
    result = search_insert([1,2,4,8,16,32,64,128], 3)
    assert result == 2
  end
end