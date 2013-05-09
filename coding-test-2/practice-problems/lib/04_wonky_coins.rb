def wonky_coins(n)
  
  coin_count = 1
  
  if n == 0
    coin_count
  else
    wonky_coins(n/2) + wonky_coins(n/3) + wonky_coins(n/4)
  end
  
end

puts wonky_coins(5)
