class String
  def blank?
    self !~ /\S/
  end

  # todo: add ability to escape quotes inside the string
  def quote
    "'#{ self }'"
  end
end
