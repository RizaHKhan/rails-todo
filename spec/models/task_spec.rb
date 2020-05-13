require 'rails_helper'

RSpec.describe Task, type: :model do
  let(:task) { build :task }

  it 'is valid with valid attributes' do
    expect(create :task).to be_valid
  end

  it 'is not valid without a title' do
    task.title = ''
    expect(task).not_to be_valid
    expect(task.errors.messages[:title]).to include("can't be blank")
  end

  it 'is valid without a body' do
    task.body = ''
    expect(task).to be_valid
  end

  it 'is invalid if first digit is a number' do
    task = build :task, title: '1'
    expect(task).not_to be_valid
    expect(task.errors.messages[:title]).to eq ['First character can only be a letter']
  end
end

