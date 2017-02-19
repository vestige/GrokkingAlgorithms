def binary_search(list, item)
  low = 0
  high = list.length - 1

  while (low <= high)
    mid = (low + high) / 2
    guess = list[mid]
 
    if (guess == item)
      p "Found."
      return mid 
    end

    if guess > item
      high = mid - 1
    else
      low = mid + 1
    end
  end

  p "Not Found."
  return 
end

b_list = [1, 3, 7, 11, 13, 17, 19, 23] 
p binary_search(b_list, 13)
p "---"
p binary_search(b_list, 9)
p "---"

big_list = [*1..300].sample(128).sort
p big_list
p binary_search(big_list, 45)
p "---"
p binary_search(big_list, 300)
p "---"



