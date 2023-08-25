# https://www.fe-siken.com/kakomon/05_haru/b1.html

def findPrimeNumbers(maxNum)
  pnList = []
  (2..maxNum).each do |i|
    divideFlag = true
    (2..(i ** 0.5)).each do |j|
      if i % j == 0
        divideFlag = false
        break
      end
    end
    if divideFlag
      pnList << i
    end
  end
  return pnList
end

puts findPrimeNumbers(20).join(" ")