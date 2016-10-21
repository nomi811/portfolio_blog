feature 'Posts' do
  background do
    sign_up
    visit '/posts/new'
  end

  scenario 'correct page route actions' do
    expect(page).to have_content('New Post')
  end

  scenario 'can create a post' do
    attach_file('Image', 'spec/files/images/heron-600px.jpg')
    fill_in 'Title', with: 'Heron'
    fill_in 'Write your article here', with: 'some content'
    click_button 'Create Post'
    expect(page).to have_content('Heron')
    expect(page).to have_css("img[src*='heron-600px.jpg']")
  end

  scenario 'does not need an image to create a post' do
    create_post
    expect(page).not_to have_css("img[scr*='missing.png']")
  end

  scenario 'the index displays correct created posts information' do
    create_post
    create_post2
    visit '/posts'
    expect(page).to have_content('New Post')
    expect(page).to have_content('Second Post')
  end

  scenario 'can view individual posts' do
    create_post
    expect(page).to have_content 'Right on, Nomi! Your article was successfully saved!'
  end

  scenario 'can edit a posts' do
    create_post
    visit '/'
    click_link 'New Post'
    click_link 'Edit Article'
    fill_in 'Title', with: 'Edited Post'
    click_button 'Update Post'
    expect(page).to have_content 'Edited Post'
  end

  scenario 'can delete posts' do
    create_post
    visit '/'
    click_link 'New Post'
    click_link 'Delete Article'
    expect(page).to have_content 'Your post was deleted!'
    expect(current_path).to eq '/posts'
    expect(page).not_to have_content 'New Post'
  end

  context 'I can not' do
    it 'create a new post if not signed in' do
      sign_out
      visit '/posts/new'
      expect(page).to have_content 'You need to sign in or sign up before continuing.'
    end
  end
end
