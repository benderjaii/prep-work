def bubble_sort(arr)
  swapped = true
  temp = 0
  
  while swapped
    swapped = false
    i = 0
    
    while i < arr.length-1
      if arr[i] > arr[i+1]
        temp = arr[i]
        arr[i] = arr[i+1]
        arr[i+1] = temp
        swapped = true
      end
      i += 1
    end
  end
  arr
end