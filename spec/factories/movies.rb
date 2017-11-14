FactoryBot.define do
  factory :movie, :class => 'Movie' do
    
    trait :movie_fields do
      adult { Faker::Number.between(0, 1) }
      website_url { Faker::Internet.url }
      tmdb_id { Faker::Number.between(88, 88888888) }
      imdb_id { Faker::Number.between(88, 88888888) }
      original_language "en"
      original_title { Faker::Movie.quote }
      overview { Populator.paragraphs(3) }
      popularity { Faker::Number.between(1, 100) }
      runtime { Faker::Number.between(60, 180) }
      status "Released"
      tagline { Populator.words(18..28) }
      title { Faker::Movie.quote }
      vote_average { Faker::Number.between(1, 10) }
      vote_count { Faker::Number.between(18, 68) }
      release_date { Faker::Date.between_except(1.year.ago, 1.year.from_now, Date.today) } 
    end
  end
end
