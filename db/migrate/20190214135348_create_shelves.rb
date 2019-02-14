class CreateShelves < ActiveRecord::Migration[5.2]
  def change
    create_table :shelves do |t|
      t.string :name, null: false
      t.references :user, foreign_key: true, null: false

      t.timestamps
    end
  end
end
