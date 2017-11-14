class CreatePeople < ActiveRecord::Migration[5.1]
  def change
    create_table :people do |t|
      t.string :slug
      t.integer :adult
      t.text :biography
      t.string :name
      t.integer :tmdb_id, index: true
      t.string :imdb_id, index: true
      t.date :birthday

      t.timestamps
    end
    add_index :people, :slug
  end
end
