require 'spec_helper'

describe '' do
  it 'displays a list of all movies' do
    movie = FactoryGirl.create(:movie)
    visit root_path
    expect(page).to have_content(movie.title)
  end


end
