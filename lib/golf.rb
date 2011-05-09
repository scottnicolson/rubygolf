class Golf
  def self.hole2(s)
    s.split.sort_by { |w| w[1] }.join ' '
  end
  def self.hole3(n)
    n == 1 ? 1 : n * hole3(n-1)
  end
end
