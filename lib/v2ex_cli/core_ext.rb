# adapted from http://devblog.avdi.org/2009/07/14/recursively-symbolize-keys/
module RecursiveSymbolization
  def symbolize_value(value)
    case value
    when Hash then value.recursively_symbolize_keys
    when Array then value.recursively_symbolize_keys
    else value
    end
  end
end

class Hash
  include RecursiveSymbolization
  def recursively_symbolize_keys
    inject({}) do |result, (key, value)|
      new_key = (key.is_a? String) ? key.to_sym : key
      result[new_key] = symbolize_value(value)
      result
    end
  end
end

class Array
  include RecursiveSymbolization
  def recursively_symbolize_keys
    map { |item| symbolize_value(item) }
  end
end
