class CreatePlates < ActiveRecord::Migration[7.0]
  def change
    create_table :plates do |t|
      t.string :name
      t.float :price
      t.integer :serves
      t.boolean :vegetarian
      t.string :category

      t.timestamps
    end
  end
end
