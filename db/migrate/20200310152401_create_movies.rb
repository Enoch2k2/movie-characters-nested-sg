class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :title
      t.time :duration
      t.string :genre
      t.date :release_date

      t.timestamps
    end
  end
end
