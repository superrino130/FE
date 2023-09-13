# https://www.fe-siken.com/kakomon/sample20220425/b5.html

class Words
  def initialize
    @tango = ["importance", "inflation", "information", "innovation"]
  end

  def freq(str)
    cnt = 0.0
    @tango.each do |x|
      (x.size - (str.size - 1)).times do |i|
        if x[i, str.size] == str
          cnt += 1
        end
      end
    end
    cnt
  end

  def freqE(str)
    cnt = 0.0
    @tango.each do |x|
      if x[-1] == str
        cnt += 1
      end
    end
    cnt
  end
end

words = Words.new
s1 = "n"
s2 = "f"
puts words.freq(s1 + s2) / (words.freq("n") - words.freqE("n"))