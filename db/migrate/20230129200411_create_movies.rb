class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string :poster
      t.string :title
      t.string :runtime
      t.string :genre
      t.string :director
      t.string :stars

      t.timestamps
    end
  end
end
