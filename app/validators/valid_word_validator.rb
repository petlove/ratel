# frozen_string_literal: true

class ValidWordValidator < ActiveModel::EachValidator
  ERROR_MESSAGE = 'deve ser um valor válido'

  def validate_each(record, attribute, value)
    record.errors.add(attribute, ERROR_MESSAGE) unless Ratel::Validator.valid?(value.to_s)
  end
end
