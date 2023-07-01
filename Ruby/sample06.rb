# https://www.fe-siken.com/kakomon/sample/b6.html

def rev(byte)
  rbyte = byte
  r = 0b00000000
  8.times do
    r = (r << 1) | (rbyte & 0b00000001)
    rbyte = rbyte >> 1
  end
  return r
end

puts rev("0b01001011".to_i(2)).to_s(2)