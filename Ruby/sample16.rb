# https://www.fe-siken.com/kakomon/sample/b16.html

def encode(codePoint)
  utf8Bite = [224, 128, 128]
  cp = codePoint.to_i(16)
  utf8Bite.size.pred.downto(0) do |i|
    utf8Bite[i] += (cp % 64)
    cp /= 64
  end
  return utf8Bite
end

p encode("3042").map { |c| c.to_s(2) }