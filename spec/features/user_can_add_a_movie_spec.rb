require 'spec_helper'

describe 'adding a movie' do
  it 'allows a user to add a movie' do
    visit new_movie_path
    fill_in 'Title', with: 'Title'
    fill_in 'Synopsis', with: 'Text'
    click_on 'Add Movie'
    expect(page).to have_content('successfully added')
  end

  it 'requires title and synopsis fields filled' do
    visit new_movie_path
    click_on 'Add Movie'
    expect(page).to have_content('Title can\'t be blank')
    expect(page).to have_content('Synopsis can\'t be blank')
  end

end
