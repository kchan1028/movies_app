class CreateGenres < ActiveRecord::Migration[5.1]
  def change
    create_table :genres do |t|
      t.string :slug, index:true
      t.string :name
      t.integer :tmdb_id, index: true
      t.text :description

      t.timestamps
    end
  end
end
