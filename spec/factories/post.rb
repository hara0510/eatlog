FactoryBot.define do
  factory :post do
    memo        { Faker::Lorem.sentence }
    mealtime_id { Faker::Number.between(from: 2, to: 4) }
    association :user

    after(:build) do |post|
      post.image.attach(io: File.open('app/assets/images/post-sample.JPG'), filename: 'post-sample.JPG')
    end
  end
end
