class Person < ApplicationRecord
    extend FriendlyId
    friendly_id :name, :use => [:slugged, :finders]
    
    default_value_for :adult, 0
    
    validates_presence_of :name, :slug
    
    has_many :people_movies
    
    def slug_candidates
        [
            :name,
            [:name, :birth_year]
        ]
    end
    
    private
    
    def birth_year
        birthday.to_date.year if birthday.present?
    end
end
