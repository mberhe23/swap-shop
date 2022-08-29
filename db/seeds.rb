puts "---cleaning database---"
Listing.destroy_all
User.destroy_all

# Users
puts "---creating fake users---"
default_password = "123456"

user_names = ["Andy", "Brianna", "Francine", "Georgia", "Jerry", "Maryan"]

users = []
user_names.each do |user|
  users << User.create!(
    email: "#{user.downcase}@users.com",
    password: default_password,
    first_name: user
  )
end

# users.map do |user|
#   file = File.open("db/support/#{user.username}.jpg")
#   user.photo.attach(io: file, filename: "#{user.username}.jpg", content_type: 'image/jpg')
#   user.save!
# end
puts "---done---"

# Listings
puts "---creating fake listings---"

# listings = {
#   tops: "t-shirt",
#   bottoms: "jeans",
#   outerwear: "coat",
#   dresses: "long dress",
#   shoes: "sneakers"
# }

# def listingCatTitle
#   create a method to grab the key as the category and the value as the title?
# end

titles = ["jeans", "t-shirt", "coat", "long dress", "sneakers"]
categories = ["tops", "bottoms", "outerwear", "dresses", "shoes"]

10.times do
Listing.create!(
  user: users.sample,
  title: titles.sample,
  description: "Something about the item.",
  category: categories.sample
)
end
puts "---done---"
