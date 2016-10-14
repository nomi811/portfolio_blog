feature 'User access' do
  context 'user not signed in and on index page' do
    it 'can not see "Sign in" link' do
      visit '/'
      expect(page).not_to have_link 'Sign out'
    end
  end
end
