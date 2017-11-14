class MovieReleaseDate < ApplicationRecord
    belongs_to :movie
    
    validates_presence_of :date
end
