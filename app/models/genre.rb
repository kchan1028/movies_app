# Genre Model
class Genre < ApplicationRecord
    extend FriendlyId
    friendly_id :name, :use => [:slugged, :finders]
    
    validates_presence_of :name, :slug
    validates_uniqueness_of :name
    
    has_many :genres_movies
end
