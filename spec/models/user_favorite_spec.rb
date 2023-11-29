require 'rails_helper'
RSpec.describe Favorite, type: :model do
  before do
    @user = FactoryBot.create(:user)
    @favorite = FactoryBot.create(:favorite)
    @user_favorite = FactoryBot.build(:user_favorite)
  end

  describe 'お気に入り登録' do
    context '登録できる場合' do
      it 'userとfavoriteが存在すれば登録できる' do
        expect(@user_favorite).to be_valid
      end
    end

    context '登録できない場合' do
      it 'userが紐づいていないと登録できない' do
        @user_favorite.user = nil
        @user_favorite.valid?
        expect(@user_favorite.errors.full_messages).to include('Userを入力してください')
      end

      it 'favoriteが紐づいていないと登録できない' do
        @user_favorite.favorite = nil
        @user_favorite.valid?
        expect(@user_favorite.errors.full_messages).to include('Favoriteを入力してください')
      end
    end
  end
end
