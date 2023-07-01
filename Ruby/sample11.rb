# https://www.fe-siken.com/kakomon/sample/b11.html

def binSort(data)
  n = data.size
  bins = Array.new(n + 1)
  i = 0
  for i in 0...n
    bins[data[i]] = data[i]
  end
  return bins[1, n]
end

p binSort([2, 6, 3, 1, 4, 5])