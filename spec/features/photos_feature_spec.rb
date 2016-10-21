feature 'Photos' do
  background do
    sign_up
  end

  context 'I can not' do
    it 'add a new photo if not signed in' do
      sign_out
      visit '/photos/new'
      expect(page).to have_content 'You need to sign in or sign up before continuing'
    end
  end

  context 'I can' do
    it 'create a new photo' do
      create_photo
      expect(page).to have_content 'New Photo'
    end
  end
end
