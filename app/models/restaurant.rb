class Restaurant < ApplicationRecord
  has_many :reservations

  def take_reservation(date, time, guests)
    total = dining_room_current_guests(date, time) + guests.to_i
    if total <= capacity
      reservation = reservations.create(date: date, time: time, guests: guests)
    else
      return reservations.build(date: date, time: time, guests: guests)
    end
  end

  def dining_room_current_guests(date, time)
    reservations.where(date: date, time: time).map { |reservation| reservation.guests }.sum
  end

  def has_capacity?

  end

end
