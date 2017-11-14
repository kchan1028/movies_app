class CreateMovieReleaseDates < ActiveRecord::Migration[5.1]
  def change
    create_table :movie_release_dates do |t|
      t.date :date, index: true
      t.text :note
      t.string :country
      t.references :movie, index: true

      t.timestamps
    end
  end
end
