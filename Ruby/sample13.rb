# https://www.fe-siken.com/kakomon/sample/b13.html

def search(data, target)
  low = 0
  high = data.size - 1
  while low <= high
    middle = (low + high) / 2
    if data[middle] < target
      low = middle
    elsif data[middle] > target
      high = middle
    else
      return middle
    end
  end
  return -1
end

puts search([2], 2)
puts search([2, 4], 2)
# puts search([2, 4], 4)
puts search([-1, 2, 4], 2)