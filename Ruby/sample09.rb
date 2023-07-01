# https://www.fe-siken.com/kakomon/sample/b9.html

@tree = [[2, 3], [4, 5], [6, 7], [8, 9], [10, 11], [12, 13], [14]]

def order(n)
  if @tree.flatten.include?(n * 2) && @tree.flatten.include?(n * 2 + 1)
    order(n * 2)
    puts n
    order(n * 2 + 1)
  elsif @tree.flatten.include?(n * 2)
    order(n * 2)
    puts n
  else
    puts n
  end
end

order(1)