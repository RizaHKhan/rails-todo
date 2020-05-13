class Task < ApplicationRecord
  include ActiveModel::Validations

  validates_presence_of :title
  validates_with CustomValidations
end
