require 'spec_helper'


feature 'List of 3 recently added movies' do 

  # As a logged in user
  # I want to see a list of the 3 most recently added movies
  # So that I know what is new and available for me to review

  # -There is a list of the 3 most recently added movie on the homepage.


  it 'displays 3 most recently added films' do 
   movie = FactoryGirl.create_list(:movie,3)
    visit(movies_path)
  
    expect(page).to have_content("Most Recently Added")
    expect(page).to have_content(movie[0].title)
    expect(page).to have_content(movie[1].title)
    expect(page).to have_content(movie[2].title)
 
  end
end
