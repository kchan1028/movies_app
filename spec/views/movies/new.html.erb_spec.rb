require 'rails_helper'

RSpec.describe "movies/new", type: :view do
  before(:each) do
    assign(:movie, Movie.new(
      :adult => false,
      :website_url => "MyString",
      :tmdb_id => 1,
      :imdb_id => "MyString",
      :original_language => "MyString",
      :original_title => "MyString",
      :overview => "MyText",
      :popularity => "9.99",
      :runtime => 1,
      :status => "MyText",
      :tagline => "MyString",
      :title => "MyString",
      :vote_average => "9.99",
      :vote_count => 1
    ))
  end

  it "renders new movie form" do
    render

    assert_select "form[action=?][method=?]", movies_path, "post" do

      assert_select "input[name=?]", "movie[adult]"

      assert_select "input[name=?]", "movie[website_url]"

      assert_select "input[name=?]", "movie[tmdb_id]"

      assert_select "input[name=?]", "movie[imdb_id]"

      assert_select "input[name=?]", "movie[original_language]"

      assert_select "input[name=?]", "movie[original_title]"

      assert_select "textarea[name=?]", "movie[overview]"

      assert_select "input[name=?]", "movie[popularity]"

      assert_select "input[name=?]", "movie[runtime]"

      assert_select "textarea[name=?]", "movie[status]"

      assert_select "input[name=?]", "movie[tagline]"

      assert_select "input[name=?]", "movie[title]"

      assert_select "input[name=?]", "movie[vote_average]"

      assert_select "input[name=?]", "movie[vote_count]"
    end
  end
end
