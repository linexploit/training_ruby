def day_trader(prices)
    return [] if prices.empty?
  
    min_price_day = 0
    min_price = prices[0]
    max_profit = 0
    buy_day = 0
    sell_day = 0
  
    prices.each_with_index do |price, day|
      if price < min_price
        min_price = price
        min_price_day = day
      end
  
      profit = price - min_price
      if profit > max_profit
        max_profit = profit
        buy_day = min_price_day
        sell_day = day
      end
    end
  
    [buy_day, sell_day]
  end
  