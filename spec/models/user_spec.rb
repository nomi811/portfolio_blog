describe User do
  subject {
    described_class.new(
      email: 'test@example.com',
      password: 'password',
      password_confirmation: 'password'
    )
  }
  context 'Authentication' do
    it 'is authenticable' do
      expect(subject.valid_password?('password')).to be_truthy
    end
  end
  context 'Validations' do
    it 'is valid with valid attributes' do
      expect(subject).to be_valid
    end
    it 'is not valid without a password' do
      subject.password = nil
      expect(subject).not_to be_valid
    end
    it 'is not valid without an email' do
      subject.email = nil
      expect(subject).not_to be_valid
    end
  end
end
