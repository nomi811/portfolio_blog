# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  subject do
    described_class.new(
      email: 'test@example.com',
      password: 'password',
      password_confirmation: 'password'
    )
  end

  context 'when Authentication' do
    it 'is authenticable' do
      expect(subject).to be_valid_password('password')
    end
  end

  context 'when Validations' do
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
