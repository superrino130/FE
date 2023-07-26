# 7月追加分

def calcCosineSimilarity(vector1, vector2)
  numerator = 0
  vector1.size.times do |i|
    numerator += vector1[i] * vector2[i]
  end
  temp = 0
  vector1.size.times do |i|
    temp += vector1[i].pow(2)
  end
  denominator = temp.pow(0.5)
  temp = 0
  vector2.size.times do |i|
    temp += vector2[i].pow(2)
  end
  denominator *= temp.pow(0.5)
  similarity = numerator / denominator
end

puts calcCosineSimilarity([1, 1, 1], [1, 1, 1])
puts calcCosineSimilarity([1, 1, 1], [2, 2, 2])
puts calcCosineSimilarity([1, 1, 1], [1, 1, -1])
puts calcCosineSimilarity([1, 1, 1], [1, -1, -1])
puts calcCosineSimilarity([1, 1, 1], [-1, -1, -1])
puts calcCosineSimilarity([1, 0, 2], [3, 1, -1])
