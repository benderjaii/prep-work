def sci_not(num)
  
  power = 0
  
  while(num > 10.0)
    num /= 10.0
    power += 1
  end
  
  num.round.to_s+"."+((num*10)%10).round.to_s + ((num*100)%10).round.to_s+ "E" + power.to_s
end