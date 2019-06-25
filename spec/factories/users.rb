FactoryBot.define do
  factory :user do
    name { Faker::Name.name }
    nickname { Faker::Name.middle_name }
  end
end
