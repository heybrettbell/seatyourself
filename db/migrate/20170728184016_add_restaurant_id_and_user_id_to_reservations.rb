class AddRestaurantIdAndUserIdToReservations < ActiveRecord::Migration[5.0]
  def change
    add_column :reservations, :restaurant_id, :integer
    add_column :reservations, :user_id, :integer 
  end
end
