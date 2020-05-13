class CustomValidations < ActiveModel::Validator
  def validate record
    if record.title
      unless record.title.chr =~ /[A-Za-z]/
        record.errors[:title] << 'First character can only be a letter'
      end
    end
  end
end
