class CreateOctopi < ActiveRecord::Migration[5.2]
  def change
    create_table :octopi do |t|
      t.string :name
      t.integer :legs

      t.timestamps
    end
  end
end
