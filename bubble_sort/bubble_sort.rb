def bubble_sort(array)
  
  n = array.length()
 
  swapped = true

  while swapped
    swapped = false
     i = 1
    
    for x in (i..n-1)
      if array[x-1] > array[x]
        array[x-1],array[x] = array[x],array[x-1]
        swapped = true
      end
    end
    
  end
  return array
end

numbers = [4,1,2,3,5]

print bubble_sort(numbers)

def bubble_sort_by(array)

  n = array.length()
  swapped = true

  while swapped

  swapped = false
  i = 1
    

    for x in (i..n-1)
      left = array[x-1]
      right = array[x]
      if yield(left, right) > 0
        array[x-1],array[x] = array[x],array[x-1]
        swapped = true
      end

    end 
  end

  return array
  
end

bubble_sort_by(["hi","hello","hey"]) {|left, right|
  left.length <=> right.length
}