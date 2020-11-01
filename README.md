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
