# Users
puts "---creating fake users---"
default_password = "123456"

user_names = ["Andy", "Brianna", "Francine", "Georgia", "Jerry", "Maryan"]

users = []
user_names.each do |user|
  users << User.create!(
    email: "#{user.downcase}@users.com",
    password: default_password
  )
end

# users.map do |user|
#   file = File.open("db/support/#{user.username}.jpg")
#   user.photo.attach(io: file, filename: "#{user.username}.jpg", content_type: 'image/jpg')
#   user.save!
# end
puts "---done---"

# Listings
