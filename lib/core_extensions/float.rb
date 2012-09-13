class Float
  def to_percent(digits_after_decimal=2)
    (self * 100).round digits_after_decimal
  end

  def to_formatted_percent
    to_percent.to_s + '%'
  end
end
