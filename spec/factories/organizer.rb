FactoryBot.define do
  factory :organizer do
    email { Faker::Internet.free_email }
    name { Faker::Lorem.characters(number:5) }
    introduction { Faker::Lorem.characters(number:50) }
    postal_code { Faker::Number.leading_zero_number(digits: 7) }
    address { Faker::Address }
    telephone_number { Faker::Number.leading_zero_number(digits: 11) }
    homepage { Faker::Internet.url }
  end
end