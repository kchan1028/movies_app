genres = %W[Action Adventure Animation Comedy Crime Documentary Drama Family
    Fantasy History Horror Music Romance Science\ Fiction TV\ Movie Thriller
    War Western
]

genres.each { |genre| Genre.create(name: genre) }