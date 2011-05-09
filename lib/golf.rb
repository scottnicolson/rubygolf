class Golf
  def self.hole2(s)
    s.split.sort_by { |w| w[1] }.join ' '
  end
end
