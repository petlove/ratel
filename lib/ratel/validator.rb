# frozen_string_literal: true

module Ratel
  module Validator
    class << self
      def valid?(value)
        !value.match(/\b#{condition}\b/)
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
