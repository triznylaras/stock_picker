def stock_picker(prices)
  min_price = prices[0]  #starting min price at index[0] (for buy)
  min_index = 0

  profit = 0
  buy_sell_days = []

  #loop the prices array
  prices.each_with_index do |price, index|
    #determine min price (for the best day to buy)
    if price < min_price
      min_price = price
      min_index = index
      next
    end

    #determine the best profit by calculating
    #current price - min price
    if price - min_price > profit
      profit = price - min_price
      buy_sell_days = [min_index, index] #set buy & sell days
    end
  end
  buy_sell_days #return the best buy & sell days
end

prices_array = [17, 3, 6, 9, 15, 8, 5, 1, 10]
p stock_picker(prices_array)