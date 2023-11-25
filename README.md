# アプリケーション名
* Eatlog - シンプルダイエット・かんたん食事記録

<br /><br />

# アプリケーション概要
1. その日食べたものを写真で管理することができる
2. 投稿にコメントができ、ユーザー間でコミュニケーションをとることができる

<br /><br />

# URL
* https://eatlog.onrender.com/

<br /><br />

# テスト用アカウント
* Basic認証<br />
パスワード：pass<br />
認証ID：user<br />
* テストユーザー<br />
メールアドレス：test1@com<br />
パスワード：password1

<br /><br />

# 利用方法
## ユーザー登録・マイページ機能
1. トップページのメニューからユーザーの新規登録またはログインを行う
2. メニューからマイページを選択する

## 写真投稿
1. ログインしている状態で、メニューから投稿するを選択する
2. 写真と食べた時間を入力し投稿する
3. 一覧に投稿が表示される

## 他のユーザーの投稿にアクションする
1. 写真を選択し、投稿の詳細ページを開く
2. ログインしている場合コメントを投稿できる

<br /><br />

# アプリケーションを作成した背景
* 以下の2点をきっかけに、アプリの開発を行った。
1. 自分自身、日頃健康意識を高めることと、ダイエットをするために食事記録のアプリを使用しているということ。食事記録のアプリは細かく食材を記録したりなどとても煩雑なものが多く、シンプルで手軽に記録を続けられるようなものがないかと考えた。
2. 同じ様に健康を意識している人やダイエッターの日々の食事の画像をSNSで調べることがよくあるということ。<br />

    以上のことを同時にできるようなものがあれば便利に活用できると考え、食事の管理をしたくても記録が続かない人、食事の情報収集を視覚的に簡単にしたい人をターゲットに、写真を共有して食事の記録を取ることができるSNSアプリケーションを開発することにした。

<br /><br />

# 洗い出した要件
* 要件定義を以下にまとめた<br />
https://docs.google.com/spreadsheets/d/1ixcO8JLZJV7096aK1kloBPiQy_3Z0AyTAUTCGalpNfs/edit?usp=sharing

<br /><br />

# 実装した機能についての画像やGIFおよびその説明
## ユーザー登録機能
* ユーザーを登録する
* ログインする
* ログアウトする
* マイページを表示する<br />
  マイページでは写真を日付別に分けて表示し、1日の食事の記録がわかりやすいようにした<br />
[![Image from Gyazo](https://i.gyazo.com/5f673a1ecc4f60280c8398c44001d30b.gif)](https://gyazo.com/5f673a1ecc4f60280c8398c44001d30b)

## 投稿機能
* 写真と食事時間、メモ(任意)を記入し投稿する<br />
  投稿する項目は記録が面倒にならないよう最低限にした
* 投稿した内容を編集する
* 投稿した内容を削除する
* 一覧表示機能<br />
  トップページには投稿した写真をサムネイルの一覧で表示し、参考にする投稿を閲覧しやすいよう朝・昼・夜の食事時間ごとに分けて表示できるようにした<br />
[![Image from Gyazo](https://i.gyazo.com/16fc1fb8dcef5c4e47463f8c62faa5c6.gif)](https://gyazo.com/16fc1fb8dcef5c4e47463f8c62faa5c6)

## コメント投稿機能
* 投稿にコメントする

## レスポンシブ対応
* スマートフォン用表示<br />
  スマートフォンで手軽にアプリを使用できるよう、レスポンシブデザインを実装した<br />
[![Image from Gyazo](https://i.gyazo.com/4c0a44f4d88746f6c6de72969be23871.png)](https://gyazo.com/4c0a44f4d88746f6c6de72969be23871)
<br /><br />

# 実装予定の機能
* ユーザーフォロー機能
* 投稿のお気に入り機能
* タブレットサイズのレスポンシブ対応

<br /><br />

# データベース設計
[![Image from Gyazo](https://i.gyazo.com/6c6038fa2052b63f39bb10285621f3af.png)](https://gyazo.com/6c6038fa2052b63f39bb10285621f3af)

<br /><br />

# 画面遷移図
[![Image from Gyazo](https://i.gyazo.com/f61a0497f3ef83172cd6e17d9440c85c.png)](https://gyazo.com/f61a0497f3ef83172cd6e17d9440c85c)

<br />

# 開発環境
* Ruby on Rails フレームワーク
* HTML,CSS,JavaScript
* データベース:MySQL
* バージョン管理:Git
* デプロイ先:Render

<br /><br />

# ローカルでの動作方法
* 以下のコマンドを順に実行<br />
1. git clone https://github.com/hara0510/eatlog.git<br />
2. cd eatlog<br />
3. bundle install<br />
4. rails db:create<br />
5. rails db:migrate<br />
6. rails server<br />

<br /><br />

# 工夫したポイント
  * 使用技術<br />
  1. テックキャンプで学んだことの復習<br />
    deviseを使用したユーザー登録機能、Active Storageを使用した画像投稿機能、active hashによる選択画面のプルダウン表示、factory bot及びfakerを使用したテスト、JavaScriptによるメニュー表示の視認性の向上など
  2. 学習内容の応用・調べて実装したこと<br />
    対応するカテゴリー別の一覧表示<br /><br />

  * 開発方法・タスク管理<br />
    実装中はGitHubのプロジェクト機能を活用し、タスク管理を行った<br /><br />
    
  * 改善点<br />
  1. 機能の充実化<br />
    実装予定のユーザーのフォロー機能及び投稿のお気に入り機能を行う
  2. 実装済み機能の改善<br />
    ログインしていない場合、投稿がない場合の表示を改善する<br />
    マイページ機能を充実させる（ユーザーのプロフィール画像を設定できるようにする、カレンダーを表示し日付を指定して画像を閲覧できるようにする等）<br />
  3. スマートフォン用のレスポンシブデザインの改善<br />
    メニューは押しやすい位置に配置するなど、スマートフォンユーザーにより使いやすいようなレスポンシブデザインを考える<br /><br />
  * 制作時間<br />
    2023年11月4日〜2023年11月25日(22日間)<br />
    所要時間：約50時間<br /><br />