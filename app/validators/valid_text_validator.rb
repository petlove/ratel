# frozen_string_literal: true

class ValidTextValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    word = Ratel::Validator.match(value.to_s)

    return unless word

    record.errors.add(attribute, "#{"#{word} "}é inválido(a)")
  end
end
