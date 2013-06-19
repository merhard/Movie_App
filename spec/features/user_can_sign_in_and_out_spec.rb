require 'spec_helper'


describe 'authentication' do 
 let!(:user) {FactoryGirl.create(:user)} #, :email =>"m@m.com",:password =>"password")}
  it "can sign into an account" do 
   # x = User.create!(:email => "m@m.com",:password => "password")
   
    visit new_user_session_path
    fill_in "Email", with: 'm@m.com'
    fill_in "Password", with: 'password'

    click_on 'Sign in' 

    expect(page).to have_content('Listing movies')

  end

  it "can sign out of an account" do 
    visit new_user_session_path
    fill_in "Email", with: 'm@m.com'
    fill_in "Password", with: 'password'

    click_on 'Sign in' 

    
    click_on 'Sign out'

    expect(page).to have_content('Listing movies')
  end
end

