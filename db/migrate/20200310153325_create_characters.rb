class CreateCharacters < ActiveRecord::Migration[5.2]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :race
      t.string :gender
      t.belongs_to :movie, foreign_key: true

      t.timestamps
    end
  end
end
