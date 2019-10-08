# frozen_string_literal: true

class Person
  include ActiveModel::Validations

  attr_accessor :name

  validates :name, valid_text: true

  def initialize(name)
    @name = name
  end
end
