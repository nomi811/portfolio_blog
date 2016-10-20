describe User do
  it 'is authenticable' do
    user = User.create(
      email: 'test@example.com',
      password: 'password',
      password_confirmation: 'password'
    )
    expect(user.valid_password?('password')).to be_truthy
  end
end
