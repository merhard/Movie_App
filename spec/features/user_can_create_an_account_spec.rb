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
end
