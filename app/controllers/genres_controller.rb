# Genre
class GenresController < ApplicationController
  before_action :set_show, only: [:show]
  before_action :set_index, only: [:index]

  # GET /genres
  def index; end

  # GET /genres/1
  def show
    @page_title = @resource.name
    @page_description = @resource.description
  end
end
