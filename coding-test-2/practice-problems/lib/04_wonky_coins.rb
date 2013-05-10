def wonky_coins_arr(n)
  coin_array = 0
  if n < 0
    return
  elsif n > 0
    coin_array = [wonky_coins(n/2), wonky_coins(n/3), wonky_coins(n/4)]
  end
  
  return coin_array
end

def wonky_coins(n)
  count = 1
  if n < 0
    return 0
  elsif n > 0
    return (wonky_coins(n/2) + wonky_coins(n/3) + wonky_coins(n/4))
  end
  
  return count
end