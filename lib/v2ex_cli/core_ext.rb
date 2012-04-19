class Hash
  # adapted from http://devblog.avdi.org/2009/07/14/recursively-symbolize-keys/
  def recursively_symbolize_keys
    inject({}) do |result, (key, value)|
      new_key = case key
                when String then key.to_sym
                else key
                end
      new_value = case value
                  when Hash then value.recursively_symbolize_keys
                  else value
                  end
      result[new_key] = new_value
      result
    end
  end
end
