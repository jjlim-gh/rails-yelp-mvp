# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
all_resto = []
all_resto << {name: "Sukiya", address: "Meguro", phone_number: "080-1231-231", category: "Japanese"}
all_resto << {name: "Saizeriya", address: "Ishige", phone_number: "080-1234-567", category: "Italian"}
all_resto << {name: "Tim Ho Wan", address: "Kasuga", phone_number: "080-7654-321", category: "Chinese"}
all_resto << {name: "Ichiran", address: "Shibuya", phone_number: "N/A", category: "Japanese"}
all_resto << {name: "St. Pierre", address: "Harajuku", phone_number: "070-3344-789", category: "French"}
all_resto << {name: "Manneken", address: "Kumamoto", phone_number: "080-6969-531", category: "Belgian"}


all_resto.each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
