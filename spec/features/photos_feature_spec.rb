feature 'Photos' do

  context 'I can not' do
    it 'add a new photo if not signed in' do
      sign_up
      sign_out
      visit '/photos/new'
      expect(page).to have_content 'You need to sign in or sign up before continuing'
    end
  end
end
