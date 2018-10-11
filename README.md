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

## usersテーブル

|Column|Type|Options|
|------|----|-------|
|email         |string|null: false, unique: true|
|password      |string|null: false              |
|name          |string|                         |
|logo          |string|                         |
|image         |string|                         |
|description   |text  |                         |
|representative|string|                         |
|establishment |string|                         |
|address       |string|                         |
|vision        |text  |                         |
|company_url   |string|                         |

### Association
- has_many :stories
- has_many :albums
- has_many :releases
- has_many :medias



## storiesテーブル

|Column|Type|Options|
|------|----|-------|
|main_title |string |null: false                   |
|main_copy  |string |null: false                   |
|main_image |string |null: false                   |
|sub_title01|string |                              |
|sub_image01|string |                              |
|sub_body01 |text   |                              |
|sub_title02|string |                              |
|sub_image02|string |                              |
|sub_body02 |text   |                              |
|user_id    |integer|null: false, foreign_key: true|

### Association
- belongs_to :user
- has_many :tags, through: :story_tag_relations
- has_many :story_tag_relations



## story_tag_relationsテーブル

|Column|Type|Options|
|------|----|-------|
|story_id |integer|null: false, index: true, foreign_key: true|
|tag_id   |integer|null: false, index: true, foreign_key: true|

### Association
- belongs_to :story
- belongs_to :tag



## tagsテーブル

|Column|Type|Options|
|------|----|-------|
|name|string |null: false, unique: true|

### Association
- has_many :stories, through: :story_tag_relations
- has_many :story_tag_relations



## albumsテーブル

|Column|Type|Options|
|------|----|-------|
|image  |string |null: false                   |
|text   |string |                              |
|user_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :user



## releasesテーブル

|Column|Type|Options|
|------|----|-------|
|date   |string |null: false                   |
|text   |string |null: false                   |
|url    |string |null: false                   |
|user_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :user



## mediasテーブル

|Column|Type|Options|
|------|----|-------|
|date   |string |null: false                   |
|text   |string |null: false                   |
|url    |string |null: false                   |
|user_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :user
