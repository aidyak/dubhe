# frozen_string_literal: true

require_relative "dubhe/version"

module Dubhe
  UNITS = %w[B KB MB GB TB].freeze

  def self.convert(bytes, precision: 2)
    return "0 B" if bytes.to_i <= 0

    exp = (Math.log(bytes) / Math.log(1024)).to_i
    exp = UNITS.size - 1 if exp > UNITS.size - 1
    value = bytes.to_f / (1024 ** exp)

    "#{value.round(precision)} #{UNITS[exp]}"
  end
end
