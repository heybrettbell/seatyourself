class CreateRestaurants < ActiveRecord::Migration[5.0]
  def change
    create_table :restaurants do |t|

      t.string     :name
      t.text       :description
      t.integer    :capacity
      t.string     :location
      t.integer    :phone_number
      t.string     :address

      t.timestamps
    end
  end
end
