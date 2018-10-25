# frozen_string_literal: true

describe Photo do
  subject { described_class.new }

  context 'Validations' do
    it 'has a valid factory' do
      expect(build(:photo)).to be_valid
    end
    it 'is not valid without a name' do
      expect(subject).not_to be_valid
    end
    it 'is not valid without an image' do
      subject.name = 'New Photo'
      expect(subject).not_to be_valid
    end
  end

  context 'Uniqueness' do
    it 'can not create a duplicate photo' do
      create(:photo)
      create(:photo)
      expect(subject).to have(1).error_on(:image)
    end
  end
end
