# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

## Log

1. GitHubでリポジトリ作成
1. clone
1. cd して `rails new .`
1. IDEAで開く
   1. railsアプリとしてプロジェクト作成
1. ターミナルから `rails server` で初期表示
   1. http://localhost:3000/
1. IDEAから実行して初期表示
   1. 実行構成を設定
   1. プロジェクトSDKを設定
1. モデル作成
   1. `rails generate model person name:text age:integer mail:text`
   1. アプリケーションエラー
1. マイグレーションの実行
   1. `rails db:migrate`
1. シードの作成
   1. `db/seeds.rb`
   1. `rails db:seed`
1. コントローラ作成
   1. `rails generate controller people index`
   1. http://localhost:3000/people/index
1. ルーティングの設定
   1. `config/routes.rb`
   1. `get 'people', 'people#index'`
1. コントローラの修正
   1. `app/controllers/people_controller.rb`
1. Viewの修正
   1. `app/views/people/index.html.erb`

## sqlite3

終了:  
`.exit`