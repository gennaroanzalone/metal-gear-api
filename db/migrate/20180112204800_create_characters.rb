class CreateCharacters < ActiveRecord::Migration[5.1]
  def change
    create_table :characters do |t|
      t.string :char_name
      t.integer :game_id
      t.text :first_game
      t.text :bio

      t.timestamps
    end
  end
end
