# CS_DB設計

## membersテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|references|null: false, foreign_key: true|
|group_id|references|null: false, foreign_key: true|

### Association
- belongs_to :group
- belongs_to :user


## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|index:true, null:false, unique:true|

### Association
- has_many :members
- has_many :groups, through: :members
- has_many :messages


## groupsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null:false, unique:true|

### Association
- has_many :messages
- has_many :members
- has_many :users, through: :members


## messagesテーブル
|Column|Type|Options|
|------|----|-------|
|body|string||
|image|string||
|user_id|references|null:false|
|group_id|references|null:false|


### Association
- belongs_to :group
- belongs_to :user
