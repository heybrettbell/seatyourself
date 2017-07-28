Restaurant.destroy_all
Reservation.destroy_all

restaurant_list = [
  ["Il Ducce", "Italian", "A fine Italian experience with flair", 40, "21 Jump Street, Toronto, ON, M5H 1E4"],
  ["Fiddler's Green", "Pub", "Feel at home with comfort food and over 50 beers on tap.", 45, "1224 University Avenue, Toronto, ON, M6T 2R8"],
  ["Golden Pond", "Thai", "A taste of Thailand served hot and fresh", 50, "265 Jakes Ave, Calgary, AB, R1E 2B9"],
  ["Patagonia", "Chinese", "All you can eat buffet with fresh food served three times daily", 100, "100 Huntington Road, Toronto, ON M1E 7W3"],
  ["Mama's Kitchen", "Italian", "Come home to Mama and eat your dinner", 55, "17-A King Street West, Toronto, ON, M7A 2R1"],
  ["The Silver Burro", "Mexican", "Intimate Mexican fare with a Texas twist", 30, "1001 Centre Ave, Toronto, ON, M2B 8G1"]
]

restaurant_list.each do |restaurant|
  restaurant = Restaurant.create!(name: restaurant[0], cuisine: restaurant[1], description: restaurant[2], capacity: restaurant[3], address: restaurant[4])
  puts "#{restaurant.name} created"
end

3.times do
  Reservation.create!(guests: 5, time: 6, restaurant: Restaurant.first)
end

3.times do
  Reservation.create!(guests: 8, time: 6, restaurant: Restaurant.last)
end
