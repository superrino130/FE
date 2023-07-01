# https://www.fe-siken.com/kakomon/sample/b7.html

def factorial(n)
  if n == 0
    return 1
  end
  return n * factorial(n - 1)
end

puts factorial(6) # 720