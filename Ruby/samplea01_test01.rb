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

test_cnt = 0
ok_cnt = 0
[[0, 100], [3, 100], [4, 300], [9, 300], [10, 500]].each do |a, b|
  test_cnt += 1
  if fee(a) == b
    ok_cnt += 1
  end
end
puts "テスト数: #{test_cnt}, 合格数: #{ok_cnt}"