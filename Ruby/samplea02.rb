# https://www.fe-siken.com/kakomon/sample20220425/b2.html

array = [1, 2, 3, 4, 5]
right = 0
left = 0
tmp = 0
for left in 0..(array.size / 2)
  right = array.size - left - 1
  tmp = array[right]
  array[right] = array[left]
  array[left] = tmp
end

p array