require 'rails_helper'

RSpec.describe "movies/index", type: :view do
  before(:each) do
    assign(:movies, [
      Movie.create!(
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
      ),
      Movie.create!(
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
      )
    ])
  end

  it "renders a list of movies" do
    render
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Website Url".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Imdb".to_s, :count => 2
    assert_select "tr>td", :text => "Original Language".to_s, :count => 2
    assert_select "tr>td", :text => "Original Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Tagline".to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
  end
end
