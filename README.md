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

# テーブル設計

##  usersテーブル

| Column             | Type   | Options      |
| ------------------ | ------ | ------------ |
| name               | text   | null: false  |
| email              | string | null: false  |
| password           | string | null: false  |


###  Association
- has_many : questions
- has_many : answer

##  questions

| Column             | Type       | Options      |
| ------------------ | ---------- | ------------ |
| title              | string     | null: false  |
| text               | text       | null: false  |
| user               | references | null: false, foreign_key: true    |

###  Association
- has_many :answer
- belongs_to : user

###  answers

| Column             | Type   | Options      |
| ------------------ | ------ | ------------ |
| text               | text   | null: false  |
| user               | references | null: false, foreign_key: true |
| question           | references | null: false, foreign_key: true |

###  Association
- belongs_to : question
- belongs_to : user

・アプリケーション名	 FES

・アプリケーション概要	プログラミングに興味がありこれからエンジニアになりたい人達のメンタル面を相談できるQ&Aサイト

・テスト用アカウント	test@gmail.com Pass testtest1

・利用方法	質問・回答はログインが必須です。 質問コーナーのtitleをクリックすると投稿詳細ページに遷移します。詳細ページから回答できます。質問コーナーの投稿者ネームをクリックするとそのユーザーの詳細ページに遷移します。

・目指した課題解決	新しくエンジニアになろうと思っていても、いざ始めるとなれば不安や悩みが沢山出てくると思います。その様な時にQ&Aサイトにてリアルな声を聞ける様にする事です。

・洗い出した要件
| 機能                | 目的    |
| -----------------  | ------  |
| 質問機能            | ユーザーの不安や悩みの数を一覧で参照できる様にする為|
| 回答機能            | ユーザー目線で考え見やすくする為|
| ログイン機能         |同じ悩みがある時,同じ不安がある時に共感出来る事があればいいねする事が出来る|
| ユーザー詳細機能      | 悩みや不安がどれほどあるのか一覧として参照できる様にしている |
| フロント実装機能   | | ユーザー目線で考え、迷子にならない様にcss jsなどを使い見た目を整えました |


・実装した機能についてのGIFと説明	実装した機能について、それぞれどのような特徴があるのか列挙しましょう。GIFを添えることで、イメージがしやすくなります。

・実装予定の機能	いいね機能・ベストアンサー機能

・データベース設計	<a href="https://gyazo.com/e5d7a21c674b392635a71213f28afc52"><img src="https://i.gyazo.com/e5d7a21c674b392635a71213f28afc52.png" alt="Image from Gyazo" width="500"/></a>


