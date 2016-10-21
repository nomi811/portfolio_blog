describe Pattern do
  subject { described_class.new }

  context 'Validations' do
    it 'has a valid factory' do
      expect(build(:pattern)).to be_valid
    end
    it 'is not valid without a name' do
      expect(subject).not_to be_valid
    end
    it 'is not valid without a pattern' do
      subject.name = 'New Pattern'
      expect(subject).not_to be_valid
    end
  end

  context 'Uniqueness' do
    it 'can not create a duplicate photo' do
      create(:pattern)
      create(:pattern)
      expect(subject).to have(1).error_on(:image)
    end
  end
end
