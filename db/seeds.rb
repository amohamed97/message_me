# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.first
user2 = User.second
Message.create(body: "This is a message", user: user)
Message.create(body: "This is a message", user: user2)
Message.create(body: "This is a message", user: user2)
Message.create(body: "This is a message", user: user)
Message.create(body: "This is a message", user: user)