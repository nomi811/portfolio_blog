feature 'User access' do
  context 'user not signed in and on index page' do
    it 'can not see "Sign in or Sign out" links' do
      visit '/'
      expect(page).not_to have_link 'Sign Out'
      expect(page).not_to have_link 'Sign In'
    end
  end

  context 'I can' do
    it 'sign up' do
      sign_up
      expect(current_path).to eq '/'
      expect(page).to have_content 'Welcome! You have signed up successfully'
    end

    it 'sign in' do
      sign_up
      sign_out
      sign_in
      expect(page).to have_content 'Signed in successfully'
    end


    it 'sign out' do
      sign_up
      sign_out
      expect(page).to have_content 'Signed out successfully'
      expect(page).not_to have_link 'Sign out'
    end
  end

  context 'I can not' do
    it 'create a new post if not signed in' do
      sign_up
      sign_out
      visit '/posts/new'
      expect(page).to have_content 'You need to sign in or sign up before continuing.'
    end

    it 'add a new project if not signed in' do
      sign_up
      sign_out
      visit '/projects/new'
      expect(page).to have_content 'You need to sign in or sign up before continuing'
    end

    it 'add a new photo if not signed in' do
      sign_up
      sign_out
      visit '/photos/new'
      expect(page).to have_content 'You need to sign in or sign up before continuing'
    end

    it 'add a new pattern if not signed in' do
      sign_up
      sign_out
      visit '/patterns/new'
      expect(page).to have_content 'You need to sign in or sign up before continuing'
    end
  end
end
