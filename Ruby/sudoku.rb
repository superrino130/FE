def read_data
  @banmen = Array.new(9) { gets.chomp.split('').map(&:to_i) }
end

def pickup_s
  @pos_e = []
  9.times do |i|
    9.times do |j|
      @pos_e << [i, j] if @banmen[i][j] == 0
    end
  end
  @e_size = @pos_e.size
end

def check_h
  9.times do |i|
    h = Hash.new(0)
    9.times do |j|
      h[@banmen[i][j]] += 1 if @banmen[i][j] > 0
    end
    return false if h.values.select { _1 > 1 }.size > 0
  end
  true
end

def check_v
  9.times do |j|
    h = Hash.new(0)
    9.times do |i|
      h[@banmen[i][j]] += 1 if @banmen[i][j] > 0
    end
    return false if h.values.select { _1 > 1 }.size > 0
  end
  true
end

def check_b
  3.times do |i|
    3.times do |j|
      h = Hash.new(0)
      3.times do |u|
        3.times do |v|
          h[@banmen[i * 3 + u][j * 3 + v]] += 1 if @banmen[i * 3 + u][j * 3 + v] > 0
        end
      end
      return false if h.values.select { _1 > 1 }.size > 0
    end
  end
  true
end

def add_value
  @banmen[@pos_e[@pos][0]][@pos_e[@pos][1]] += 1
end

def value_check
  if @banmen[@pos_e[@pos][0]][@pos_e[@pos][1]] > 9
    @banmen[@pos_e[@pos][0]][@pos_e[@pos][1]] = 0
    @pos -= 1
  else
    @pos += 1
  end
end

read_data
pickup_s
@pos = 0
cnt = 1
while true
  break if @pos == @e_size
  add_value
  while check_b.! || check_h.! || check_v.!
    add_value
  end
  value_check
  cnt += 1
end

puts cnt
@banmen.map { puts _1.join('') }
