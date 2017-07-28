#Request: 6pm, for 8 people
#Max capacity for any hour block is 40

dining_room = {"6" => 0, "7" => 0, "8" => 0, "9" => 0, "10" => 0}

def take_reservation(time, guests)
  if dining_room[time] < 40
    dining_room[time] += guests
  else
    puts "Full try again!"
  end

end
