class Hash

  # to find the right value for a nested hash
  def find_all_values_for(key)
    result = []
    result << self[key]
    unless self.values.nil?
      self.values.each do |values|
        values = [values] unless values.is_a? Array
        values.each do |value|
          result += value.find_all_values_for(key) if value.is_a? Hash
        end
      end
    end
    result.flatten.compact
  end

end