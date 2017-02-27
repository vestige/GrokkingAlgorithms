def fact(i)
  p i
  return 1 if (i == 1)
  return i * fact(i - 1)
end

p fact(5)