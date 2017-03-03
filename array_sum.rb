def sum(car, *cdr)
  return 0 if cdr.empty?
  car + sum(*cdr)
end

def count(car, *cdr)
  return 1 if cdr.empty?
  1 + count(*cdr)
end

def max(car, *cdr)
  return (car > cdr[0]) ? car : cdr[0] if (cdr.size == 1)
  tmp_max = max(*cdr)
  (car > tmp_max) ? car : tmp_max
end

a = [10, 1, 20, 3, 20, 4, 5, 6, 7, 8]
p sum(*a)
p count(*a)
p max(*a)
