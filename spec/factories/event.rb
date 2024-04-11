FactoryBot.define do
  factory :event do
    name { Faker::Lorem.characters(number:5) }
    introduction { Faker::Lorem.characters(number:50) }
    date { Faker::Date.forward }
    place { Faker::Lorem.characters(number:5) }
    schedule { Faker::Lorem.characters(number:50) }
    number_of_people { rand(1..20) }
    is_recruiting { true }
    organizer { FactoryBot.create(:organizer) }
  end
end
