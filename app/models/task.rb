class Task < ApplicationRecord
  include ActiveModel::Validations
  validates_with CustomValidations

  validates_presence_of :title
end
