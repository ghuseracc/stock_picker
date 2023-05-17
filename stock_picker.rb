def stock_picker(array)
  profit = 0
  sell_array = array
  result = 0
  day_array = Array.new
  buy_day = 0
  sell_day = 0

    array.each_with_index do |buy, buy_index|
        sell_array.each_with_index do |sell, sell_index|
            result = sell - buy
            if result > profit
                if buy_index < sell_index
                    profit = result
                    buy_day = buy_index
                    sell_day = sell_index
                end
            end
        end
    end
    day_array.push(buy_day, sell_day)
    puts "#{day_array}"
end

stock_picker([17,3,6,9,15,8,6,1,10])