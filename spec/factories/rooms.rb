FactoryBot.define do
  factory :room do
    name { Faker::Movie.quote }
  end
end
