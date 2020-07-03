# frozen_string_literal: true

class ValidTextValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    word = Ratel::Validator.check_word(value.to_s)
    
    record.errors.add(attribute, "#{word} é inválido(a)") unless Ratel::Validator.valid?(value.to_s)
  end
end
