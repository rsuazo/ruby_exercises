def stock_picker(array)
  total = 0
  profit = 0
  buy = 0
  sell = 0
  i = 0
  n = 0

  while n < array.size do
    while i < array.size do
      total = array[n + i].to_i - array[n].to_i
      if total > profit
        profit = total
        buy = n
        sell = n + i
      end
      i += 1
    end
    n += 1
    i = 0
  end
  
  puts "You earn a profit of $#{array[sell]} - $#{array[buy]} == $#{profit} if you buy on day #{buy} and sell on day #{sell}"
  return [buy, sell]
end

 p stock_picker([17,3,6,9,15,8,6,1,10])
 p stock_picker([4,6,9,34,28,12,2,16,8,44])
 p stock_picker([8, 5, 3, 6 ,8, 56, 43, 76, 54, 9])
 p stock_picker([6, 2, 7, 3, 1, 7, 3, 8, 4, 9])
 p stock_picker([99, 88, 77, 66, 55, 44, 33, 22, 11, 99])
 p stock_picker([80, 99, 3,4,7,10])