class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.references :shelf, foreign_key: true
      t.integer :movie_format, default: 0, null: false
      t.string :title, null: false

      t.timestamps
    end
  end
end
