require 'rails_helper'
require 'capybara/rails'

feature 'Signing in' do
  before :each do
    User.create(email: 'user@example.com', password: '111111111', password_confirmation: '111111111')
  end

  scenario "signs me in" do
    visit new_user_session_path
    fill_in 'user_email', :with => 'user@example.com'
    fill_in 'user_password', :with => '111111111'
    click_button 'Log in'
    expect(page).to have_content 'Signed in successfully'
  end
end
