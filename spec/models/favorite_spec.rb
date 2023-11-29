require 'rails_helper'
RSpec.describe Favorite, type: :model do
  before do
    @post = FactoryBot.create(:post)
    @favorite = FactoryBot.build(:favorite)
  end

  describe 'お気に入り登録' do
    context '登録できる場合' do
      it 'post_idが存在すれば登録できる' do
        expect(@favorite).to be_valid
      end
    end

    context '登録できない場合' do
      it 'postが紐づいていないと登録できない' do
        @favorite.post = nil
        @favorite.valid?
        expect(@favorite.errors.full_messages).to include('Postを入力してください')
      end
    end
  end

end


# bundle exec rspec spec/models/favorite_spec.rb