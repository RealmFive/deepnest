# frozen_string_literal: true

class DeepNest
  class << self
    def deep_dup(structure)
      case structure
      when Array
        structure.map { |x| deep_dup(x) }
      when Hash
        structure.transform_values { |v| deep_dup(v) }
      else
        structure.dup
      end
    end
  end
end
