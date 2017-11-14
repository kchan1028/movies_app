FactoryBot.define do
  factory :movie_release_date do
    date { Faker::Date.between_except(1.year.ago, 1.year.from_now, Date.today) }
    country { Faker::Address.country_code }
  end
end
