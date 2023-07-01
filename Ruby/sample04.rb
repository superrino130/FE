# https://www.fe-siken.com/kakomon/sample/b4.html

def gcd(num1, num2)
  x = num1
  y = num2
  while x != y
    if x > y
      x = x - y
    else
      y = y - x
    end
  end
  return x
end

puts gcd(12, 15)
