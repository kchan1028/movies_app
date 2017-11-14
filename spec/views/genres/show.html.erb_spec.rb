require 'rails_helper'

RSpec.describe "genres/show", type: :view do
  before(:each) do
    @genre = assign(:genre, Genre.create!(
      :name => "Name",
      :tmdb_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2/)
  end
end
