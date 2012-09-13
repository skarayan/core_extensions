class Object
  def self.find_all_descendents_of(parent_klass)
    ObjectSpace.each_object(Class).select { |klass| klass < parent_klass }
  end

  def try(method)
    send method rescue nil
  end

  def present?
    if respond_to? :blank?
      !blank?
    else
      !nil?
    end
  end

  def method_missing(method, *args, &block)
    if Object.const_defined?('Platform') && Platform.respond_to?(method)
      Platform.send method, *args, &block
    else
      super
    end
  end
end
