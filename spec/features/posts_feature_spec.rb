feature 'Creating posts' do

  scenario 'correct page route actions' do
    sign_up
    visit '/posts/new'
    expect(page).to have_content('New Post')
  end

  scenario 'can create a post' do
    sign_up
    visit '/posts/new'
    attach_file('Image', "spec/files/images/heron-600px.jpg")
    fill_in 'Title', with: 'Heron'
    fill_in 'Write your article here', with: 'some content'
    click_button 'Create Post'
    expect(page).to have_content('Heron')
    expect(page).to have_css("img[src*='heron-600px.jpg']")
  end

  it 'does not need an image to create a post' do
    sign_up
    visit '/posts/new'
    fill_in 'Title', with: 'Example Post'
    fill_in 'Write your article here', with: 'some content'
    click_button 'Create Post'
    expect(page).not_to have_css("img[scr*='missing.png']")
  end

end
