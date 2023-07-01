# https://www.fe-siken.com/kakomon/sample20220425/b1.html

def fee(age)
  if age <= 3
    ret = 100
  elsif age <= 9
    ret = 300
  else
    ret = 500
  end
  return ret
end

for i in 0..20
  puts "#{i}, #{fee(i)}"
end