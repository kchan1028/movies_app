require 'rails_helper'

RSpec.describe "movies/show", type: :view do
  before(:each) do
    @movie = assign(:movie, Movie.create!(
      :adult => false,
      :website_url => "Website Url",
      :tmdb_id => 2,
      :imdb_id => "Imdb",
      :original_language => "Original Language",
      :original_title => "Original Title",
      :overview => "MyText",
      :popularity => "9.99",
      :runtime => 3,
      :status => "MyText",
      :tagline => "Tagline",
      :title => "Title",
      :vote_average => "9.99",
      :vote_count => 4
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Website Url/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Imdb/)
    expect(rendered).to match(/Original Language/)
    expect(rendered).to match(/Original Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Tagline/)
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/4/)
  end
end
