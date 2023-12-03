require 'rails_helper'
RSpec.describe Follow, type: :model do
  before do
    @follow = FactoryBot.create(:follow)
  end

  describe 'フォロー登録' do
    context '登録できる場合' do
      it 'following_idとfollower_idが存在すれば登録できる' do
        expect(@follow).to be_valid
      end
    end

    context '登録できない場合' do
      it 'followerが紐づいていないと登録できない' do
        @follow.follower = nil
        @follow.valid?
        expect(@follow.errors.full_messages).to include('Followerを入力してください')
      end

      it 'followingが紐づいていないと登録できない' do
        @follow.following = nil
        @follow.valid?
        expect(@follow.errors.full_messages).to include('Followingを入力してください')
      end
    end
  end
end