def nearest_larger(arr, idx)
  arr.index(arr.find{|x| x > arr[idx] }) #return the index of the largest value 
end
