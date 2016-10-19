context 'I can not' do
  it 'add a new pattern if not signed in' do
    sign_up
    sign_out
    visit '/patterns/new'
    expect(page).to have_content 'You need to sign in or sign up before continuing'
  end
end
