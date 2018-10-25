# frozen_string_literal: true

describe Project do
  subject { described_class.new }

  context 'Validations' do
    it 'is valid with valid attributes' do
      subject.title = 'New Project'
      subject.description = 'Some description'
      expect(subject).to be_valid
    end
    it 'is not valid without a title' do
      expect(subject).not_to be_valid
    end
    it 'is not valid without a description' do
      subject.title = 'New Project'
      expect(subject).not_to be_valid
    end
  end
end
