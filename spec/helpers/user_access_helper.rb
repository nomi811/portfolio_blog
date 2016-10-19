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
  fill_in 'Password confirmation', with: 'password', :match => :prefer_exact
  click_button 'Sign up'
end

def sign_out
  click_link 'Sign Out'
end
