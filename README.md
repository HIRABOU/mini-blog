## README

# DB設計

## users table

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|mail|string|null: false|

- add_index :users

### Association
- has_many :tweets
- has_many :images
- has_many :comments


## tweets table

|Column|Type|Options|
|------|----|-------|
|title|string|null: false|
|content|text| |
|user_id|integer| |

### Association
- has_many :images
- has_many :comments
- belongs_to :user


## comments table

|Column|Type|Options|
|------|----|-------|
|text|string|null: false|
|user_id|integer| |
|tweet_id|integer| |

### Association
- belongs_to :user
- belongs_to :tweet


## images table

|Column|Type|Options|
|------|----|-------|
|image|string| |
|user_id|integer| |
|tweet_id|integer| |

### Association
- belongs_to :user
- belongs_to :tweet








