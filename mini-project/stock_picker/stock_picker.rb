def stock_picker(stock_price)
  best_value = 0
  result = []

  stock_price.each_with_index do |buy, buy_day|
    stock_price.each_with_index do |sell, sell_day|
        # Only consider selling after buying
      if sell_day > buy_day
        if (sell - buy) >= best_value
          best_value = sell - buy
          result[0] = buy_day
          result[1] = sell_day
        end
      end
    end
  end
  puts "The best day to buy and sell are : #{result}"
  result
end

stock_picker([17,3,6,9,15,8,6,1,10])
