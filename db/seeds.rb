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
all_resto << {name: "Sukiya", address: "Meguro", category: "Japanese"}
all_resto << {name: "Saizeriya", address: "Ishige", category: "Italian"}
all_resto << {name: "Tim Ho Wan", address: "Kasuga", category: "Chinese"}
all_resto << {name: "Ichiran", address: "Shibuya", category: "Japanese"}
all_resto << {name: "St. Pierre", address: "Harajuku", category: "French"}
all_resto << {name: "Manneken", address: "Kumamoto", category: "Belgian"}


all_resto.each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
