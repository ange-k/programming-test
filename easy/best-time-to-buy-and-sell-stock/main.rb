
# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
  maxProfit = 0
  minPrice = 99999
  prices.each do |price|
    minPrice = minPrice <= price ? minPrice : price
    tmp = (price - minPrice)
    maxProfit = maxProfit >= tmp ? maxProfit : tmp
  end
  return maxProfit
end

require 'minitest/autorun'
class BestTimeToBuySellTests < Minitest::Test
  def test_example
    result = max_profit([7,1,5,3,6,4])
    assert result == 5
  end
  def test_example2
    result = max_profit([7,6,4,3,1])
    assert result == 0
  end
end