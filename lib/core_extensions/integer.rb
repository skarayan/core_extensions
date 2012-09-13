class Integer
  def commify
    self.to_s.gsub(/(\d)(?=(\d{3})+$)/,'\1,')
  end
end
