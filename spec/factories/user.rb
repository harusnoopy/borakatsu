FactoryBot.define do
  factory :user do
    japanese_user = Gimei.name
    last_name { japanese_user.last.kanji }
    first_name { japanese_user.first.kanji }
    first_name_kana { japanese_user.first.katakana }
    last_name_kana { japanese_user.last.katakana }

    password = Faker::Internet.password(min_length: 6)
    password { password }
    password_confirmation { password }

    email { Faker::Internet.free_email }
    telephone_number { Faker::Number.leading_zero_number(digits: 11) }
    is_deleted { false }
  end
end