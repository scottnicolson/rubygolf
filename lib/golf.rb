class Golf
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
end
