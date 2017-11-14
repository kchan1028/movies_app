class Movie < ApplicationRecord
    extend FriendlyId
    friendly_id :slug_candidates, use: :slugged
    
    has_many :genres_movies
    has_many :genres, through: :genres_movies
    has_many :movie_release_dates
    has_many :people_movies
    has_many :people, through: :people_movies
    
    validates_presence_of :title, :slug
    
    def slug_candidates
        [
            :title,
            [:title, :release_year]
        ]
    end
    
    private
    
      def release_year
        release_date.to_date.year if release_date.present?
      end
end
