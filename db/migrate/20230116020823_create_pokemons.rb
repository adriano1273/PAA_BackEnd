class CreatePokemons < ActiveRecord::Migration[7.0]
  def change
    create_table :pokemons do |t|
      t.string :num
      t.string :name
      t.string :img
      t.string :height
      t.string :weight

      t.timestamps
    end
  end
end
