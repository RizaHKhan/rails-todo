class CustomValidations < ActiveModel::Validator
  def validate record
    unless record.title.chr =~ /[A-Za-z]/
      record.errors[:title] << 'First character can only be a letter'
    end
  end
end
