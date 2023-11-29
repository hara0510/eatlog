FactoryBot.define do
  factory :user_favorite do
    association :user
    association :favorite
  end
end
