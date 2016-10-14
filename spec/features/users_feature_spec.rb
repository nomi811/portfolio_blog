feature 'User access' do
  context 'user not signed in and on index page' do
    it 'can not see "Sign in or Sign out" links' do
      visit '/'
      expect(page).not_to have_link 'Sign out'
      expect(page).not_to have_link 'Sign in'
    end
  end
end
