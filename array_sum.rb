def sum(list)
  return 0 if list.empty?
  car, *cdr = list
  car + sum(cdr)
end

def count(list)
  return 0 if list.empty?
  car, *cdr = list
  1 + count(cdr)
end

def max(list)
  car, *cdr = list
  if (cdr.size == 1)
    return (car > cdr[0]) ? car : cdr[0]
  end
  tmp_max = max(cdr)
  (car > tmp_max) ? car : tmp_max
end

a = [1, 2, 3, 4, 5, 6, 7, 8]
p sum(a)
p count(a)
p max(a)