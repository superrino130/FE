# https://www.fe-siken.com/kakomon/sample/b12.html

def simRaito(s1, s2)
  cnt = 0
  if s1.size != s2.size
    return -1
  end
  for i in 0...s1.size
    if s1[i] == s2[i]
      cnt += 1
    end
  end
  return cnt.to_f / s1.size
end

puts simRaito(["a", "p", "p", "l", "e"], ["a", "p", "p", "l", "e"])
puts simRaito(["a", "p", "p", "l", "e"], ["a", "p", "r", "i", "l"])
puts simRaito(["a", "p", "p", "l", "e"], ["m", "e", "l", "o", "n"])
puts simRaito(["a", "p", "p", "l", "e"], ["p", "e", "n"])
