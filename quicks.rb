def quicksort(list)
  return list if list.size < 2

  pivot, *src = list
  less = []  
  greater = []
  src.each {|i| 
    less << i if i <= pivot
    greater << i if i > pivot
  }
  return quicksort(less) + [pivot] + quicksort(greater)
end

a = [7, 10, 5, 7, 3, 4]
p quicksort(a)