# 5月追加分

@hashArray = []

def add(value)
  i = calcHash1(value)
  if @hashArray[i] == -1
    @hashArray[i] = value
    return true
  else
    i = calcHash2(value)
    if @hashArray[i] == -1
      @hashArray[i] = value
      return true
    end
  end
  false
end

def calcHash1(value)
  value % @hashArray.size
end

def calcHash2(value)
  (value + 3) % @hashArray.size
end

def test
  @hashArray = [-1] * 5
  add(3)
  add(18)
  add(11)
end

test
puts @hashArray.join(" ")