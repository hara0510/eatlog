class Mealtime < ActiveHash::Base
  self.data = [
    { id: 1, name: '食べた時間を選択' },
    { id: 2, name: 'あさ' },
    { id: 3, name: 'ひる' },
    { id: 4, name: 'よる' },
  ]
end