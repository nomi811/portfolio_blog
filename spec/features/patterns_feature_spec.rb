feature 'Patterns' do

  background do
    sign_up
  end

  context 'I can not' do
    it 'add a new pattern if not signed in' do
      sign_out
      visit '/patterns/new'
      expect(page).to have_content 'You need to sign in or sign up before continuing'
    end
  end

  context 'I can' do
    it 'create a new pattern' do
      create_pattern
      expect(page).to have_content 'New Pattern'
    end
  end
end
