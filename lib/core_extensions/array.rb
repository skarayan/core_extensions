class Array
  def to_h
    Hash[self]
  end

  def to_data
    map(&:to_h)
  end

  def map_to(field)
    self.map { |hash| hash[field] }
  end

  def exclude?(value)
    !include?(value)
  end

  def to_hash_with_indexes_as_keys
    each_with_index.map { |option,index| [index,option] }.to_h
  end
end
