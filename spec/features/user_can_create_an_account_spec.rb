require 'spec_helper'

describe 'creating an acoount' do
  it 'has a sign up button on the homepage' do
    visit root_path
    expect(page).to have_selector('a', text: 'Signup')
  end

  it 'redirects to signup form' do
    visit root_path
    click_on 'Signup'
    expect(page).to have_content('Sign up')
  end

  it "creates a user" do
    visit new_user_registration_path
    fill_in :user_email, with: 'm@m.m'
    fill_in :user_password, with: 'password'
    fill_in :user_password_confirmation, with: 'password'
    click_on 'Sign up'
    expect(page).to have_content('Welcome! You have signed up successfully.')
  end
end
