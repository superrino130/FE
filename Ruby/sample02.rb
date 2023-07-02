# https://www.fe-siken.com/kakomon/sample/b2.html

def fizzBuzz(num)
  if num % 15 == 0
    result = "3と5で割り切れる"
  elsif num % 3 == 0
    result = "3で割り切れる"
  elsif num % 5 == 0
    result = "5で割り切れる"
  else
    result = "3でも5でも割り切れない"
  end
end

(1..15).each do |i|
  puts "i = #{i.to_s.rjust(2, " ")} #{fizzBuzz(i)}"
end
