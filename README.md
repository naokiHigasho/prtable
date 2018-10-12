## companiesテーブル
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
- has_many :users
- has_many :releases
- has_many :medias


## usersテーブル
|Column|Type|Options|
|------|----|-------|
|email         |string |null: false, unique: true     |
|password      |string |null: false                   |
|name          |string |null: false, unique: true     |
|company_id    |integer|null: false, foreign_key: true|

### Association
- has_many :stories
- has_many :albums


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
- has_many :story_tags, through: :story_tag_relations
- has_many :story_tag_relations


## story_tag_relationsテーブル
|Column|Type|Options|
|------|----|-------|
|story_id       |integer|null: false, index: true, foreign_key: true|
|story_tag_id   |integer|null: false, index: true, foreign_key: true|

### Association
- belongs_to :story
- belongs_to :story_tag


## story_tagsテーブル
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
- has_many :album_tags, through: :album_tag_relations
- has_many :album_tag_relations


## album_tag_relationsテーブル
|Column|Type|Options|
|------|----|-------|
|album_id       |integer|null: false, index: true, foreign_key: true|
|album_tag_id   |integer|null: false, index: true, foreign_key: true|

### Association
- belongs_to :album
- belongs_to :album_tag


## album_tagsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string |null: false, unique: true|

### Association
- has_many :albums, through: :album_tag_relations
- has_many :album_tag_relations


## releasesテーブル
|Column|Type|Options|
|------|----|-------|
|title          |string  |null: false                   |
|url            |string  |null: false                   |
|company_id     |integer |null: false, foreign_key: true|

### Association
- belongs_to :company


## mediasテーブル
|Column|Type|Options|
|------|----|-------|
|title          |string  |null: false                   |
|url            |string  |null: false                   |
|company_id     |integer |null: false, foreign_key: true|

### Association
- belongs_to :company
