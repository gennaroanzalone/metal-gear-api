class CreateGears < ActiveRecord::Migration[5.1]
  def change
    create_table :gears do |t|
      t.string :name
      t.text :about

      t.timestamps
    end
  end
end
