require 'spec_helper' 

describe 'movie reviews' do 
  let(:movie) {FactoryGirl.create(:movie) }

  it "user can add a review" do 
    visit movie_path(movie)
    expect(page).to have_content('Add Review')


  end

  it "takes user to add review form" do 
    visit movie_path(movie)

    click_on('Add Review')

    save_and_open_page

    expect(page).to have_content('Description')

  end


end