# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

restaurants_data = [
  { name: "Peaceful Restaurant", address: "123 Main St, Vancouver", category: "chinese" },
  { name: "Olio a Italia", address: "456 Elm St, Vancouver", category: "italian" },
  { name: "Tokyo Sushi", address: "789 Oak St, Vancouver", category: "japanese" },
  { name: "French Rest", address: "101 Maple St, Vancouver", category: "french" },
  { name: "Belgian Food", address: "222 Pine St, Vancouver", category: "belgian" }
]

restaurants_data.each do |restaurant_data|
  Restaurant.create!(restaurant_data)
  puts "Created #{restaurant_data}"
end
  puts "Finished!"
