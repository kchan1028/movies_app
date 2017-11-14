class CreateGenresMovies < ActiveRecord::Migration[5.1]
  def change
    create_table :genres_movies do |t|
      t.references :movie, foreign_key: true
      t.references :genre, foreign_key: true

      t.timestamps
    end
  end
end
