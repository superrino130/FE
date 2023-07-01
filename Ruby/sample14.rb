# https://www.fe-siken.com/kakomon/sample/b14.html

def findRank(sortedData, pf)
  i = pf * (sortedData.size - 1)
  return sortedData[i.ceil]
end

def summarize(sortedData)
  rankData = []
  pa = [0.0, 0.25, 0.5, 0.75, 1.0]
  for i in 0...pa.size
    rankData << findRank(sortedData, pa[i])
  end
  return rankData
end

p summarize([0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1.0])