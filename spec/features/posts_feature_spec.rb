feature 'Creating posts' do
  background do
    sign_up
    visit '/posts/new'
    post_one = create(:post, title: 'This is post one')
    post_two = create(:post, title: 'This is the second post')
  end

  scenario 'correct page route actions' do
    expect(page).to have_content('New Post')
  end

  scenario 'can create a post' do
    attach_file('Image', "spec/files/images/heron-600px.jpg")
    fill_in 'Title', with: 'Heron'
    fill_in 'Write your article here', with: 'some content'
    click_button 'Create Post'
    expect(page).to have_content('Heron')
    expect(page).to have_css("img[src*='heron-600px.jpg']")
  end

  scenario 'does not need an image to create a post' do
    fill_in 'Title', with: 'Example Post'
    fill_in 'Write your article here', with: 'some content'
    click_button 'Create Post'
    expect(page).not_to have_css("img[scr*='missing.png']")
  end

  scenario 'the index displays correct created posts information' do
    visit '/posts'
    expect(page).to have_content('This is post one')
    expect(page).to have_content('This is the second post')
  end

  scenario 'can view individual posts' do
    post = create(:post)
    click_button 'Create Post'
    expect(page).to have_content 'Right on, Nomi! Your article was successfully saved!'
  end

end
