# frozen_string_literal: true

class ValidTextValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    bad_word = Ratel::Validator.invalid?(value.to_s)

    return unless bad_word

    record.errors.add(attribute, "#{bad_word} é inválido(a)")
  end
end
