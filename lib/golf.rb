class Golf
  def self.hole2(s)
    s.split.sort_by { |w| w[1] }.join ' '
  end
  def self.hole3(n)
    n == 1 ? 1 : n * hole3(n-1)
  end
  def self.hole4(m)
    m.map { |n| n.sub(/man\((.*)/, 'hat(man(\1)').sub(/dog\((.*)\)/, 'dog(\1(bone))').sub(/cat/, 'dead') }
  end
end
