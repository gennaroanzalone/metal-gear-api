class CreateGames < ActiveRecord::Migration[5.1]
  def change
    create_table :games do |t|
      t.string :name
      t.string :release
      t.text :description
      t.text :story
      t.text :gameplay
      t.text :development

      t.timestamps
    end
  end
end
