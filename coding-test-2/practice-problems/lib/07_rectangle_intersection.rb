def rec_intersection(rect1, rect2)
  lower_x = [rect1[0][0], rect2[0][0]].max
  upper_x = [rect1[1][0], rect2[1][0]].min
  
  lower_y = [rect1[0][1], rect2[0][1]].max
  upper_y = [rect1[1][1], rect2[1][1]].min
  
  if lower_x.between? rect1[0][0], rect1[1][0]
    return [[lower_x, lower_y], [upper_x, upper_y]]
  end
  
  return nil
end
