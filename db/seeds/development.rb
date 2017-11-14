# cleanup db except common seeds
DatabaseCleaner.clean_with :truncation, { except: %w[genres] }

18.times do
    FactoryBot.create(:person, :person_fields)
end

18.times do
    movie = FactoryBot.create(:movie, :movie_fields,
        person_ids: Person.all.shuffle.first(3).map { |p| p.id },
        genre_ids: Genre.all.shuffle.first(2).map { |p| p.id }
        )
    3.times do
        movie.movie_release_dates.create!(FactoryBot.attributes_for(:movie_release_date))
    end
end