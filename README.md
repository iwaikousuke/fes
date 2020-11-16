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

# アプリケーション名
## FES(Fledgling engineer support)

## アプリケーション概要
### これからエンジニアやプログラミングを学ぼうと思っている人達の、マインド面（不安・悩み）を相談でき、エンジニア経験者からリアルな声を聞く事ができるような、Q&Aサイトを作成しました。

## 制作背景
### 実際、私自身がマインド面で相談したい直面に立たされたからです。テックキャンプでは入校前に事前カウンセリングというサービスを行っていたから相談する事ができたが、もっと簡易的に不安や悩みを相談出来るのではないかと課題化し、解決策としてこちらのサイトを制作いたしました。

## 洗い出した要件
| 機能                | 目的    |
| -----------------  | ------  |
| ログイン機能         | 質問・回答とどのユーザーが投稿したのか判別するため|
| 質問機能            | 不安や悩みを相談できる様にするため|
| 回答機能            | 質問に対して解決に導いてくれるようにするため|
| 質問一覧表示機能     | 沢山のユーザーが質問した一覧を閲覧できる様にするため|
| 質問詳細機能         | 一覧ではユーザー目線を考え沢山の質問をみて欲しかったため、質問詳細ページから回答できるようにするため｜
| ユーザー詳細機能      | 一人のユーザーの悩みや不安の相談を一覧として閲覧できる様にしたいため |
| フロント実装機能    | ユーザー目線で考え、迷子にならない様にcss jsなどを使い見た目を整えました |

## DEMO
## トップページです。
<a href="https://gyazo.com/3e358d3efd80ee432500f9d8f4ec1cbd"><img src="https://i.gyazo.com/3e358d3efd80ee432500f9d8f4ec1cbd.gif" alt="Image from Gyazo" width="1000"/></a>

## 新規登録画面・ログイン画面です。
### フォームが空の場合だと保存できず、エラーメッセージが表示される様にしています。
<a href="https://gyazo.com/599b4a02a8ccfae352117c70994fa43e"><img src="https://i.gyazo.com/599b4a02a8ccfae352117c70994fa43e.gif" alt="Image from Gyazo" width="1000"/></a>

## 質問投稿画面です。
### ログインしている事が前提です。フォームが空の場合だと保存できず、エラーメッセージが表示される様にしています。
<a href="https://gyazo.com/ab776f7988c60a1cdab7a0943c9d4103"><img src="https://i.gyazo.com/ab776f7988c60a1cdab7a0943c9d4103.gif" alt="Image from Gyazo" width="1000"/></a>

## 質問詳細ページです。
### ログインしていなくても表示する事ができます。質問一覧表示のQをクリック、もしくはプルダウンメニューから詳細をクリックすると、遷移します。
<a href="https://gyazo.com/dc6dfaf4bd79d8ba100507e657acfa0f"><img src="https://i.gyazo.com/dc6dfaf4bd79d8ba100507e657acfa0f.gif" alt="Image from Gyazo" width="1000"/></a>

## ユーザー詳細ページです。
### 一人のユーザーがどれだけの不安や悩みを相談しているか確認する事ができます。
<a href="https://gyazo.com/891d47dc03128169eaa02e435c7a14ce"><img src="https://i.gyazo.com/891d47dc03128169eaa02e435c7a14ce.gif" alt="Image from Gyazo" width="1000"/></a>

### 今後の追加実装
- 返信機能(11/17~18)
- いいね機能（11/19)
- ベストアンサー機能(11/20)

## テーブル設計
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

## テーブル数は少ないが、一応ER図
<a href="https://gyazo.com/e5d7a21c674b392635a71213f28afc52"><img src="https://i.gyazo.com/e5d7a21c674b392635a71213f28afc52.png" alt="Image from Gyazo" width="500"/></a>


