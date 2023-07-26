# 7月追加分
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