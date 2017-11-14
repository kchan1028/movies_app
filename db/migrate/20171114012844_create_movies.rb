class CreateMovies < ActiveRecord::Migration[5.1]
  def change
    create_table :movies do |t|
      t.string :slug, index: true
      t.boolean :adult
      t.string :website_url
      t.integer :tmdb_id, index: true
      t.string :imdb_id, index: true
      t.string :original_language
      t.string :original_title
      t.text :overview
      t.decimal :popularity
      t.integer :runtime
      t.text :status
      t.string :tagline
      t.string :title, index: true
      t.date :release_date, index: true
      t.decimal :vote_average, precision: 5, scale: 2
      t.integer :vote_count

      t.timestamps
    end
    add_index :movies, :adult
  end
end
