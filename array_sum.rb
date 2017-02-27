def sum_list(list)
  if (list.size == 0) 
    return 0
  else
    return list[0] + sum_list(list.drop(1))
  end
end

a = [1, 2, 3, 4, 5, 6, 7, 8]
p sum_list(a)