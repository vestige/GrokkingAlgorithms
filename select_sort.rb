def find_smallest(list)
  smallest = list[0]
  smallest_index = 0

  count = list.size
  count.times {|i|
    if list[i] < smallest
      smallest = list[i]
      smallest_index = i
    end
  }

  smallest_index
end

def selection_sort(src)
  dest = []
  until src.empty?
    smallest = find_smallest(src)
    dest.push(src.slice!(smallest))
  end
  dest
end

#src = [5, 3, 6, 2, 10]
src = [15, 3, 6, 200, 10, 2, 333, 45, 1]
p selection_sort(src)