# frozen_string_literal: true

def sign_in
  visit '/users/sign_in'
  fill_in 'Email', with: 'test@gmail.com'
  fill_in 'Password', with: 'password'
  click_button 'Log in'
end

def sign_up
  visit '/users/sign_up'
  fill_in 'Email', with: 'test@gmail.com'
  fill_in 'Password', with: 'password'
  fill_in 'Password confirmation', with: 'password', match: :prefer_exact
  click_button 'Sign up'
end

def sign_out
  click_link 'Sign Out'
end

def create_post
  visit '/posts/new'
  fill_in 'Title', with: 'New Post'
  fill_in 'Write your article here', with: 'Some content'
  click_button 'Create Post'
end

def create_post2
  visit '/posts/new'
  fill_in 'Title', with: 'Second Post'
  fill_in 'Write your article here', with: 'Some content'
  click_button 'Create Post'
end

def create_project
  visit '/projects/new'
  fill_in 'Title', with: 'New Project'
  fill_in 'Description', with: 'Some content'
  click_button 'Create Project'
end

def create_photo
  visit '/photos/new'
  fill_in 'Name', with: 'New Photo'
  attach_file('Image', 'spec/files/images/Free-Flowing-600px.jpg')
  click_button 'Create Photo'
end

def create_pattern
  visit '/patterns/new'
  fill_in 'Name', with: 'New Pattern'
  attach_file('Image', 'spec/files/images/Free-Flowing-600px.jpg')
  click_button 'Create Pattern'
end
