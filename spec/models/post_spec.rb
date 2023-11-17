require 'rails_helper'

RSpec.describe Post, type: :model do
  before do
    @post = FactoryBot.build(:post)
  end

  describe '新規投稿' do
    context '投稿できる場合' do
      it 'imageとmealtime_idがあれば登録できる' do
        expect(@post).to be_valid
      end

      it 'memoがなくても登録できる' do
        @post.memo = ''
        expect(@post).to be_valid
      end
    end

    context '投稿できない場合' do
      it 'imageが空では投稿できない' do
        @post.image = nil
        @post.valid?
        expect(@post.errors.full_messages).to include "Image can't be blank"
      end

      it 'mealtime_idが空では投稿できない' do
        @post.mealtime_id = '1'
        @post.valid?
        expect(@post.errors.full_messages).to include 'Mealtime must be other than 1'
      end

      # it 'userが紐づいていないと登録できない'
    end
  end
end