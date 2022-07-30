def stock_picker (prices)
#do a loop and compare every element with the rest of elements
#one by one check which one have the biggest profit 
#put their index in a separate variable
  biggest_profit= 0
  best_days =""
  prices.each_with_index do |sell, sell_day|
    prices.each_with_index do |buy, buy_day|
         profit = sell - buy

         if profit > biggest_profit && buy_day < sell_day
            biggest_profit = profit
            best_days = [buy_day, sell_day]
         end
    end
  end
  best_days
end


p stock_picker([17,3,6,9,15,8,6,1,10])