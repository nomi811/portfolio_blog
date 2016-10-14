feature 'Creating posts' do
  scenario 'can create a post' do
    sign_up
    visit '/posts/new'
    # attach_file('image', "spec/files/images/heron-600px.jpg")
    # fill_in 'Title', with: 'Heron'
    # fill_in 'Write your article here', with: 'some content'
    # click_button 'Create Post'
    expect(page).to have_content('New Post')
    # expect(page).to have_css("img[src*='heron-600px.jpg']")
  end
end
