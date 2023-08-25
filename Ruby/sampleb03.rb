# https://www.fe-siken.com/kakomon/05_haru/b3.html

@data = [2, 1, 3, 5, 4]

def sort(first, last)
  pivot = @data[(first + last) / 2]
  i = first
  j = last

  while true
    while @data[i] < pivot
      i += 1
    end
    while pivot < @data[j]
      j -= 1
    end
    if i >= j
      break
    end
    @data[i], @data[j] = @data[j], @data[i]
    i += 1
    j -= 1
  end
  puts @data.join(" ")
  if first < i - 1
    sort(first, i - 1)
  end
  if j + 1 < last
    sort(j + 1, last)
  end
end

puts sort(0, 4)