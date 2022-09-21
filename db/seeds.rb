require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ username: 'Star Wars' }, { username: 'Lord of the Rings' }])
#   Character.create(username: 'Luke', movie: movies.first)

Message.destroy_all
User.destroy_all

5.times do
    user = User.create(username: Faker::Name.name)
    if user.persisted?
      rand(1..3).times do
        user.messages.create(
            body: Faker::Lorem.sentence(word_count: 3),
            user_id: user.id
        )
      end
    end
    puts user.inspect
  end
  
  