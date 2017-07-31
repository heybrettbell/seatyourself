class Restaurant < ApplicationRecord
  has_many :reservations

  def take_reservation(time, guests)
    total = dining_room_current_guests(time) + guests
    if total < @restaurant.capacity
      reservations.create(time: time, guests: guests)
    else
      puts "Full try again!"
    end
  end

  def dining_room_current_guests(time)
    reservations.where(time: time).map { |reservation| reservation.guests }.sum
  end

  def has_capacity?

  end

end
