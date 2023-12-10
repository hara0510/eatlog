FactoryBot.define do
  factory :user do
    nickname              { Faker::Name.initials(number: 2) }
    email                 { Faker::Internet.email }
    password              { Faker::Internet.password(min_length: 6) + '1a' }
    password_confirmation { password }
    bio                   { Faker::Lorem.sentence }

    after(:build) do |user|
      user.avatar.attach(io: File.open('app/assets/images/user-sample.png'), filename: 'user-sample.png')
    end
  end
end
