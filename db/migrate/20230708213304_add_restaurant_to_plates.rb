class AddRestaurantToPlates < ActiveRecord::Migration[7.0]
  def change
    add_reference :plates, :restaurant, null: false, foreign_key: true
  end
end
