FactoryBot.define do
  factory :person, :class => 'Person' do
    trait :person_fields do
      adult { Faker::Number.between(0, 1) }
      biography { Populator.paragraphs(3) }
      name { Faker::Name.name }
      tmdb_id { Faker::Number.between(88, 88888888) }
      imdb_id { Faker::Number.between(88, 88888888) }
      birthday { Faker::Date.birthday(18, 65) }
    end
  end
end
