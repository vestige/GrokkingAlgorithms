def sum_list(list)
  return 0 if list.empty?
  car, *cdr = list
  car + sum_list(cdr)
end

a = [1, 2, 3, 4, 5, 6, 7, 8]
p sum_list(a)