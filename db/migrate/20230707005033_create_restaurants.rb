class CreateRestaurants < ActiveRecord::Migration[7.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :location
      t.float :rating
      t.integer :reviews
      t.boolean :breakfast

      t.timestamps
    end
  end
end
