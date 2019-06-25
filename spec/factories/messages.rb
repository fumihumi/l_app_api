FactoryBot.define do
  factory :message do
    name { Faker::Games::Pokemon.name }
  end
end
