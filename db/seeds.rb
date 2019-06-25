# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

users = [].tap do |ary|
  10.times do
    ary << User.create(
      name: SecureRandom.uuid,
      nickname: Faker::Games::Pokemon.name
    )
  end
end

rooms = [].tap do |ary|
  3.times do
    ary  << Room.create( name: Faker::Movie.quote)
  end
end

users.each.with_index do |user, index|
  r = rooms[index % 3]
  Message.create(
    message: Faker::JapaneseMedia::OnePiece.quote,
    user_id: user.id,
    room_id: r.id
  )
end
