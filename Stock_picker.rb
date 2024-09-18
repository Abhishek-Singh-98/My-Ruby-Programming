#Implement a method #stock_picker that takes in an array of stock prices,
#one for each hypothetical day. It should return a pair of days representing
#the best day to buy and the best day to sell. Days start at 0.

#Example  > stock_picker([17,3,6,9,15,8,6,1,10])
#         => [1,4]  # for a profit of $15 - $3 == $12

prices = gets.chomp.split.map(&:to_i)
def stock_picker(prices)
  arr_length = prices.length
  index_arr = Array.new(2)
  highest_profit = 0
  count = 0
  prices.each_with_index do |buy_price, i|
    break if i== arr_length - 1
    new_index = i+1
    count +=1
    prices[new_index..arr_length].each_with_index do |sell_price, j|
      profit = sell_price - buy_price
      unless  profit <= 0
        if highest_profit < profit
          highest_profit = profit
          index_arr = [i,j+count]
        end
      end
    end
  end
  return index_arr[0]==nil ? "Bad days to invest" : index_arr
end

p stock_picker(prices)