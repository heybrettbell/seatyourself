class Restaurant < ApplicationRecord
  has_many :reservations

  # @@dining_room = {6 => 0, "7" => 0, "8" => 0, "9" => 0, "10" => 0}

  # def take_reservation(time, guests)
  #   # byebug
  #   total = @@dining_room[time] + guests
  #   if total < 40
  #     @@dining_room[time] += guests
  #   else
  #     puts "Full try again!"
  #   end
  # end

  def take_reservation(time, guests)
    # byebug
    total = dining_room_current_guests(time) + guests
    if total < 40
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
