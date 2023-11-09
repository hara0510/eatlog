class Meal_time < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'あさ' },
    { id: 3, name: 'ひる' },
    { id: 4, name: 'よる' },
  ]
end

include ActiveHash::Associations
has_many :posts