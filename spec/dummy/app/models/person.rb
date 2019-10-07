# frozen_string_literal: true

class Person
  include ActiveModel::Validations

  attr_accessor :name

  validates :name, valid_word: true

  def initialize(name)
    @name = name
  end
end
