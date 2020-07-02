# frozen_string_literal: true

class ValidTextValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    record.errors.add(attribute, "#{bad_word(value)} é inválido(a)") unless Ratel::Validator.valid?(value.to_s)
  end

  def bad_word(value)
    Ratel::Validator.invalid_word(value)
  end
end
