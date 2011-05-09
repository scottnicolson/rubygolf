class Golf
  def self.hole1(a)
    a.inject(:*)
  end
  def self.hole2(b)
    b.split.sort_by{ |b| b[1] }.join ' '
  end
  def self.hole3(n)
    n == 1 ? 1 : n * hole3(n-1)
  end
  def self.hole4(m)
    m.map { |n| n.sub(/man\((.*)/, 'hat(man(\1)').sub(/dog\((.*)\)/, 'dog(\1(bone))').sub(/cat/, 'dead') }
  end
  def self.hole6(n)
    (1..n).to_a.map { |i|
      i%15 == 0 ? 'fizzbuzz' : (i%3 == 0 ? 'fizz' : (i%5 == 0 ? 'buzz' : i))
    }
  end
  def self.hole7(a)
    a.inject([[a.shift]]) { |r, n|
      if n - 1 == r[-1][-1]
        r[-1] << n
        r
      else
        r << [n]
      end
      }.map { |a| a.size == 1 ? a[0].to_s : "#{a[0]}-#{a[-1]}" }
  end
  def self.hole8(n)
    n == 2 ? [1, 1] : (f = hole8(n-1); f + [f[-1] + f[-2]])
  end
end
