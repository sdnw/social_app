# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Admin.create!(username: "steben", type: "Admin")
u1 = User.create!(username: "max")
u2 = User.create!(username: "philly")
u3 = User.create!(username: "richie")
u1.posts.create!(text: "Hello world!")
u2.posts.create!(text: "Deadlock")
u3.posts.create!(text: "strokin my shi")

