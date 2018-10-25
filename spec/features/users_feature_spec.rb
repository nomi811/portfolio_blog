# frozen_string_literal: true

describe 'User access' do
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
end
