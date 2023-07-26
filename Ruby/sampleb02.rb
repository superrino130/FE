# 7月追加分

def proc1
  puts "A"
  proc3
end

def proc2
  proc3
  puts "B"
  proc1
end

def proc3
  puts "C"
end

proc2