# frozen_string_literal: true

module Ratel
  module Validator
    class << self
      def valid?(value)
        !value.match(condition)
      end

      def check_word(value)
        value.match(/\b{condition}\b/)&.[](0)
      end

      private

      def condition
        @condition ||= Regexp.union(patterns)
      end

      def patterns
        Ratel::Reader.read.map { |r| Regexp.new(r, Regexp::IGNORECASE) }
      end
    end
  end
end
