# https://www.fe-siken.com/kakomon/sample/b3.html

def makeNewArray(arr)
  out = []
  i = 0
  tail = 0
  out << arr[0]
  (1...arr.size).each do |i|
    tail = out[out.size - 1]
    out << tail + arr[i]
  end
  return out
end

puts makeNewArray([3, 2, 1, 6, 5, 4])[4]