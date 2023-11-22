require 'rails_helper'

RSpec.describe Comment, type: :model do
  before do
    @user = FactoryBot.create(:user)
    @post = FactoryBot.create(:post)
    @comment = FactoryBot.build(:comment)
  end

  describe 'コメント投稿' do
    context '投稿できる場合' do
      it 'user_idとpost_idとcontentがあれば登録できる' do
        expect(@comment).to be_valid
      end
    end

    context '投稿できない場合' do
      it 'contentが空では登録できない' do
        @comment.content = ''
        @comment.valid?
        expect(@comment.errors.full_messages).to include("Content can't be blank")
      end

      it 'userが紐づいていないと登録できない' do
        @comment.user = nil
        @comment.valid?
        expect(@comment.errors.full_messages).to include('User must exist')
      end

      it 'postが紐づいていないと登録できない' do
        @comment.post = nil
        @comment.valid?
        expect(@comment.errors.full_messages).to include('Post must exist')
      end
    end
  end
end
