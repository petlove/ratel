# frozen_string_literal: true

require 'yaml'

module Ratel
  module Reader
    DIR_FILES = 'lib/ratel/data/*'

    class << self
      def read
        file_names.flat_map(&method(:patterns)).compact
      end

      private

      def patterns(file_name)
        content(file_name)&.[](:patterns)
      end

      def file_names
        Dir[DIR_FILES]
      end

      def read_file(file_name)
        File.read(file_name)
      end

      def load_yml(file)
        YAML.safe_load(file) if file
      end

      def symbolize_content(content)
        JSON.parse(content.to_json, symbolize_names: true) if content
      end

      def content(file_name)
        symbolize_content(load_yml(read_file(file_name)))
      end
    end
  end
end
