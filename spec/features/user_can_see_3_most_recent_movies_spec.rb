require 'spec_helper'


describe 'viewing reviews' do 


  it 'displays 3 most recently added films' do 
    FactoryGirl.create_list(:movie,3)
    visit(movies_path)
  
    expect(page).to have_content("Most Recently Added")
    page.should have_css("li",:count => 3)
 
  end
end