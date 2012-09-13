class Hash
  def to_ostruct(klass = OpenStruct, cch = {})
    cch[self] = klass.new
    each do |key,value|
      raise "Invalid key: #{ key }" unless key =~ /[a-z_][a-zA-Z0-9_]*/
      cch[self].__send__ "#{ key }=", value.is_a?(Hash) ? cch[value] || value.send(__method__,klass,cch) : value
    end
    cch[self]
  end
end
