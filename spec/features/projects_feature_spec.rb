feature 'Projects' do
  background do
    sign_up
  end

  context 'I can not' do
    it 'add a new project if not signed in' do
      sign_out
      visit '/projects/new'
      expect(page).to have_content 'You need to sign in or sign up before continuing'
    end
  end

  context 'I can' do
    it 'create a new project' do
      create_project
      expect(page).to have_content 'New Project'
    end

    it 'edit a project' do
      create_project
      visit '/'
      click_link 'New Project'
      click_link 'Edit Project'
      fill_in 'Title', with: 'Edited Project'
      click_button 'Update Project'
      expect(page).to have_content 'Edited Project'
    end

    it 'delete a project' do
      create_project
      visit '/'
      click_link 'New Project'
      click_link 'Delete Project'
      expect(page).to have_content 'Your project was deleted!'
      expect(current_path).to eq '/projects'
      expect(page).not_to have_content 'New Project'
    end
  end
end
