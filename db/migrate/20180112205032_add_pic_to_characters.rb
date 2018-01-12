class AddPicToCharacters < ActiveRecord::Migration[5.1]
  def change
    add_column :characters, :char_pic, :string
  end
end
